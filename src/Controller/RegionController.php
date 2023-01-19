<?php

namespace App\Controller;

use App\Entity\Region;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RegionController extends AbstractController
{
    #[Route('region/{id}', name: 'app_region_show', methods: ['GET'])]
    public function show(Region $region, RecipeRepository $recipeRepository): Response
    {
        return $this->render('region/index.html.twig', [
            'region' => $region,
            'recipes' => $recipeRepository->findAllByRegion($region->getName())
        ]);
    }
}
