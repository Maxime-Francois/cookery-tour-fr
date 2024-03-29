<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Form\RecipeType;
use App\Repository\RecipeRepository;
use Knp\Component\Pager\PaginatorInterface;
use Doctrine\ORM\EntityManagerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
//use Doctrine\Persistence\ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Service\TimeConversionService;


#[Route('/recipe')]
class RecipeController extends AbstractController
{
    private $timeConversionService;

    public function __construct(TimeConversionService $timeConversionService)
    {
        $this->timeConversionService = $timeConversionService;
    }

    #[Route('/', name: 'app_recipe_index', methods: ['GET'])]
    public function index(
        RecipeRepository $recipeRepository,
        Request $request,
        PaginatorInterface $paginator
    ): Response {
        $user = $this->getUser();

        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }

        $pagination = $paginator->paginate(
            $recipeRepository->paginationQuery(),
            $request->query->get('page', 1),
            12
        );

        // Convertir le temps de préparation en heures
        foreach ($pagination as $recipe) {
            $cookingTime = $recipe->getCookingTime();
            $cookingTimeInMinutes = intval($cookingTime); // Convertir en entier
            $recipe->setCookingTime($cookingTimeInMinutes);
        }

        return $this->render('recipe/index.html.twig', [
            'userFavorites' => $userFavorites,
            'pagination' => $pagination
        ]);
    }


    #[Route('/new', name: 'app_recipe_new', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_USER')]
    public function new(Request $request, RecipeRepository $recipeRepository): Response
    {
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $user = $this->getUser();
            $recipe->setUserId($user->getId());

            $recipeRepository->save($recipe, true);


            return $this->redirectToRoute('app_recipe_show', ['id' => $recipe->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipe/new.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Security("is_granted('ROLE_USER')")]
    #[Route('/created', name: 'app_created_recipes', methods: ['GET'])]
    public function mesRecettes(RecipeRepository $recipeRepository,Request $request, PaginatorInterface $paginator): Response
    {
        //ont récupère le user
        $user = $this->getUser();
        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }


        $pagination = $recipeRepository->findAllByUserId($user->getId());

        $pagination = $paginator->paginate(
            $recipeRepository->paginationQuery(),
            $request->query->get('page', 1),
            12
        );

        return $this->render('recipe/createdRecipe.html.twig', [
            
            'userFavorites' => $userFavorites,
            'pagination' => $pagination
        ]);
    }

    #[Route('/{id}', name: 'app_recipe_show', methods: ['GET'])]
    public function show(Recipe $recipe): Response
    {
        $user = $this->getUser();

        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }
        $cookingTime = $this->timeConversionService->convertMinutesToHours($recipe->getCookingTime());
        return $this->render('recipe/show.html.twig', [
            'recipe' => $recipe,
            'userFavorites' => $userFavorites,
            'cookingTime' => $cookingTime,
        ]);
    }

    #[Security("is_granted('ROLE_USER') and user.getId() === recipe.getUserId()")]
    #[Route('/{id}/edit', name: 'app_recipe_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Recipe $recipe, RecipeRepository $recipeRepository): Response
    {
        $user = $this->getUser();
        $userId = $user->getId();
        $recipeUserId = $recipe->getUserId();

        //si l'id du user ne correspond pas a la l'id du userid de la recette
        if ($userId !== $recipeUserId) {
            //alors ont redirige l'utilisateur vers la recette
            return $this->redirectToRoute('app_recipe_show', ['id' => $recipe->getId()], Response::HTTP_SEE_OTHER);
        }

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


    #[Security("is_granted('ROLE_USER') and user.getId() === recipe.getUserId()")]
    #[Route('/{id}', name: 'app_recipe_delete', methods: ['POST'])]
    public function delete(Request $request, Recipe $recipe, RecipeRepository $recipeRepository): Response
    {
        if ($this->isCsrfTokenValid('delete' . $recipe->getId(), $request->request->get('_token'))) {
            $recipeRepository->remove($recipe, true);
        }

        return $this->redirectToRoute('app_recipe_index', [], Response::HTTP_SEE_OTHER);
    }
}
