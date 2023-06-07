<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class FavoriteController extends AbstractController
{
    #[Route('/favorite', name: 'app_favorite', methods: ['GET'])]
    #[IsGranted('ROLE_USER')]
    public function index(RecipeRepository $recipeRepository, Request $request, PaginatorInterface $paginator): Response
    {
        $user = $this->getUser();
        if (!$user) {
            return $this->redirectToRoute('app_login');
        }

        $userFavorites = $user->getFavorites();

        $userFavorites = $paginator->paginate(
            $userFavorites,
            $request->query->get('page', 1),
            12
        );

        return $this->render('favorite/favorite.html.twig', [
            'pagination' => $userFavorites,
            'userFavorites' => $userFavorites
        ]);
    }


    #[Route('/{id}/favorite', name: 'app_recipe_favorite')]
    #[IsGranted('ROLE_USER')]
    public function like(Recipe $recipe, EntityManagerInterface $manager): Response
    {
        $user = $this->getUser();

        if (!$user) {
            return $this->json([
                'code' => 403,
                'message' => "Unauthorized"
            ], 403);
        } else {
            if ($recipe->getUserFavorites()->contains($user)) {
                $recipe->removeUserFavorite($user);
                $likes = $recipe->getUserFavorites()->count();
                $recipe->setLikes2($likes);
                $manager->persist($recipe);
                $manager->flush();

                return $this->json([
                    'code' => 200,
                    'message' => 'Like supprimé avec succès',
                    'likes' => $likes
                ], 200);
            } else {
                $recipe->addUserFavorite($user);
                $likes = $recipe->getUserFavorites()->count();
                $recipe->setLikes2($likes);
                $manager->persist($recipe);
                $manager->flush();

                return $this->json([
                    'code' => 200,
                    'message' => 'Like ajouté avec succès',
                    'likes' => $likes
                ], 200);
            }
        }
    }
}
