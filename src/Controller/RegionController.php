<?php

namespace App\Controller;

use App\Entity\Region;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class RegionController extends AbstractController
{
    private $entityManager;
    private $urlGenerator;

    public function __construct(EntityManagerInterface $entityManager, UrlGeneratorInterface $urlGenerator)
    {
        $this->entityManager = $entityManager;
        $this->urlGenerator = $urlGenerator;
    }
    #[Route('region/{id}', name: 'app_region_show', methods: ['GET'])]
    public function show(int $id, RecipeRepository $recipeRepository): Response
    {
        $region = $this->entityManager->getRepository(Region::class)->find($id);

        if (!$region) {
            $notFoundUrl = $this->urlGenerator->generate('app_page_404');
            return $this->redirect($notFoundUrl);
        }

        $user = $this->getUser();

        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }

        return $this->render('region/index.html.twig', [
            'region' => $region,
            'userFavorites' => $userFavorites,
            'recipes' => $recipeRepository->findAllByRegion($region->getName())
        ]);
    }
}
