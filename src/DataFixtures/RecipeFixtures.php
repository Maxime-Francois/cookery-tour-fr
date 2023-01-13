<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Recipe;

class RecipeFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        


        for ($i = 1; $i <= 10; $i++){
            $cookingTime =  rand(1,100);
            
            $recipe = new Recipe();
            $recipe ->setName ("nom de la recette n°$i")
                    ->setDescription("<p>description de la recette n°$i</p>")
                    ->setCookingTime($cookingTime)
                    ->setImage("https://via.placeholder.com/350x150");
                   

                     $manager->persist($recipe);
        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
