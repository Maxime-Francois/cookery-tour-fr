<?php

namespace App\Controller;

use App\Entity\Recipe;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

class FavoriteController extends AbstractController
{
    #[Route('/favorite', name: 'app_favorite', methods: ['GET'])]
    #[IsGranted('ROLE_USER')]
    public function index(): Response
    {
        $user = $this->getUser();
        if(!$user){
            return $this->redirectToRoute('app_login');
        }

       $userFavorites = $user->getFavorites();

        return $this->render('favorite/favorite.html.twig', [
            'recipes' => $userFavorites
        ]);
    }

    #[Route('/{id}/favorite', name: 'app_recipe_favorite')]
    #[IsGranted('ROLE_USER')]
    public function like(Recipe $recipe, EntityManagerInterface $manager): Response
    {

        // recuperer le user connecté
        $user = $this->getUser();
        $userFavorites = $user->getFavorites();

        if (!$user) {

            return $this->json([
                'code' => 403,
                'message' => "Unauthorized"
            ], 403);
        } else {

            if ($userFavorites->contains($recipe)) {
                $recipe->removeUserFavorite($user);
                $likes = count($recipe->getUserFavorites());
                $recipe->setLikes2(($likes));
                $manager->persist($recipe);
                $manager->flush();


                return $this->json([
                    'code' => 200,
                    'message' => 'like bien supprimé',
                    'likes' => $likes
                ], 200);
            } else {
                $recipe->addUserFavorite($user);
                $likes = count($recipe->getUserFavorites());
                $recipe->setLikes2($likes);
                $manager->persist($recipe);
                $manager->flush();


                return $this->json([
                    'code' => 200,
                    'message' => 'like bien ajouté',
                    // 'likes' => $countFavByRecipe
                    'likes' => $likes

                ], 200);
            }
        }
    }
}
