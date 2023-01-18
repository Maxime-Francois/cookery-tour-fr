<?php

namespace App\Controller;

use App\Form\HomeType;
use App\Form\RegionType;
use App\Repository\RegionRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(Request $request, RegionRepository $regionRepository): Response
    {
        $form = $this->createForm(RegionType::class);
        $form->handleRequest($request);

   

        return $this->renderForm('home/index.html.twig', [
            'region_form' => $form,
            'regions' => $regionRepository->findAll()
        ]);

        


    }

 

}
