<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Region;

class RegionFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        


        for ($i = 1; $i <= 12; $i++){
         
            $region = new Region();
            $region ->setName ("nom de la région n°$i");
    
                     $manager->persist($region);
        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
