<?php

namespace App\Controller;

use App\Repository\IngredientRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class IngredientsController extends AbstractController
{
    // #[Route('/api/ingredients', name:'ingredients')]

    // public function index(Request $request, IngredientRepository $repository)
    // {
    //     return $this->json($repository->search($request->query->get
    //     ('q')));
    // }
}