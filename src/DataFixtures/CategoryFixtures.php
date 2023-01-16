<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Category;

class CategoryFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        


        // for ($i = 1; $i <= 3; $i++){
          
        //     $category = new Category();
        //     $category ->setName ("nom de la categorie n°$i");
                    

        //              $manager->persist($category);
        // }
        // // $product = new Product();
        // // $manager->persist($product);

        // $manager->flush();
    }
}
