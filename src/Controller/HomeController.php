<?php

namespace App\Controller;


use App\Form\RegionType;
use App\Form\SearchType;
use App\Model\SearchData;
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
        $formRegion = $this->createForm(RegionType::class);
        $formRegion->handleRequest($request);



        return $this->renderForm('home/index.html.twig', [
            'region_form' => $formRegion,
            'regions' => $regionRepository->findAll()
        ]);
    }

    #[Route('/mentions-légales', name: 'mentions-legales')]
    public function mentions()
    {

        return $this->renderForm('rgpd/mentions-légales.html.twig');
    }
    #[Route('/politique-de-confidentialité', name: 'politique')]
    public function politique()
    {

        return $this->renderForm('rgpd/politique-de-confidentialité.html.twig');
    }
}
