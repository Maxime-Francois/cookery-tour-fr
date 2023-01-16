<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Recipe;
use app\Entity\Category;
use App\Entity\Region;



class RecipeFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        
        $faker = \Faker\Factory::create();

        // créer 3 catégories fakées
        for($i = 1; $i <= 3; $i++){
            $category = new Category();
            $category-> setName($faker->sentence());

        $manager->persist($category);
        }

          // créer 12 régions fakées
          for($b = 1; $b <= 12; $b++){
            $region = new Region();
            $region-> setName($faker->sentence());

        $manager->persist($region);
        }


        for ($j = 1; $j <= 10; $j++){
             $cookingTime =  rand(1,100);
            
            $recipe = new Recipe();
            $recipe ->setName ($faker->sentence())
                    ->setDescription($faker->sentence())
                     ->setCookingTime($cookingTime)
                    ->setImage($faker->imageUrl())
                    ->setCategory($category)
                    ->setRegion($region);
                    
                   

                     $manager->persist($recipe);
        }
        
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
