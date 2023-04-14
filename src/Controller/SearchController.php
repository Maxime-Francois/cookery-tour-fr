<?php

namespace App\Controller;


use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class SearchController extends AbstractController
{
 
    public function searchBar()
    {
        $form = $this->createFormBuilder()
            ->setAction($this->generateUrl('handleSearch'))
            ->add('query', TextType::class, [
                'label' => false,
                'attr' => [
                    'class' => 'search-input',
                    'placeholder' => 'Entrez un nom de recette, un ingrédient ou une région'
                ]
            ])

            ->getForm();
        return $this->render('search/searchBar.html.twig', [
            'form' => $form->createView()
        ]);
    }



    /**
     * @Route("/search", name="handleSearch")
     * @param Request $request
     */
    public function handleSearch(Request $request, RecipeRepository $repo)
    {
        $user = $this->getUser();

        if ($user) {
            $userFavorites = $user->getFavorites();
        } else {
            $userFavorites = null;
        }
        $query = $request->request->all('form')['query'];

        $recipes =  [];

        if ($query) {

            $recipes = $repo->search($query);
        }

        return $this->render('search/index.html.twig', [
            'recipes' => $recipes,
            'userFavorites' => $userFavorites
        ]);

    }
}
