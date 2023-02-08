<?php

namespace App\Controller;

use App\Entity\Favorite;
use App\Entity\Recipe;
use App\Form\RecipeType;
use App\Repository\FavoriteRepository;
use App\Repository\RecipeRepository;
// use Doctrine\Persistence\ObjectManager;
use Doctrine\ORM\EntityManagerInterface as ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/recipe')]
class RecipeController extends AbstractController
{
    #[Route('/', name: 'app_recipe_index', methods: ['GET'])]
    public function index(RecipeRepository $recipeRepository): Response
    {

        $user = $this->getUser();

        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }


        return $this->render('recipe/index.html.twig', [
            'recipes' => $recipeRepository->findAll(),
            'userFavorites' => $userFavorites
        ]);
    }


    #[Route('/new', name: 'app_recipe_new', methods: ['GET', 'POST'])]
    public function new(Request $request, RecipeRepository $recipeRepository): Response
    {
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $recipeRepository->save($recipe, true);

            return $this->redirectToRoute('app_recipe_show', ['id' => $recipe->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipe/new.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_recipe_show', methods: ['GET'])]
    public function show(Recipe $recipe): Response
    {
        return $this->render('recipe/show.html.twig', [
            'recipe' => $recipe,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_recipe_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Recipe $recipe, RecipeRepository $recipeRepository): Response
    {
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $recipeRepository->save($recipe, true);

            return $this->redirectToRoute('app_recipe_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipe/edit.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_recipe_delete', methods: ['POST'])]
    public function delete(Request $request, Recipe $recipe, RecipeRepository $recipeRepository): Response
    {
        if ($this->isCsrfTokenValid('delete' . $recipe->getId(), $request->request->get('_token'))) {
            $recipeRepository->remove($recipe, true);
        }

        return $this->redirectToRoute('app_recipe_index', [], Response::HTTP_SEE_OTHER);
    }




    #[Route('/{id}/favorite', name: 'app_recipe_favorite')]

    public function like(Recipe $recipe, ObjectManager $manager): Response
    {
        // $user = $this->getUser();
        // if (!$user) return $this->json([
        //     'code' => 403,
        //     'message' => "Unauthorized"
        // ], 403);
        // if ($recipe->isLikedByUser($user)) {
        //     $like = $favRepo->findOneBy([
        //         'post' => $recipe,
        //         'user' => $user
        //     ]);
        //     $manager->remove($like);
        //     $manager->flush();

        //     $findFavByRecipe = $favRepo->findBy(['post' => $recipe]);
        //     $countFavByRecipe = count($findFavByRecipe);

        //     return $this->json([
        //         'code' => 200,
        //         'message' => 'like bien supprimé',
        //         'likes' => $countFavByRecipe
        //     ], 200);
        // }

        // $like = new Favorite();
        // $like->setPost($recipe)
        //     ->setUser($user);

        // $manager->persist($like);
        // $manager->flush();

        // $findFavByRecipe = $favRepo->findBy(['post' => $recipe]);
        // $countFavByRecipe = count($findFavByRecipe);

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
