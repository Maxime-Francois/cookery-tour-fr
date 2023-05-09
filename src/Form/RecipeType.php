<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Ingredient;
use App\Entity\Recipe;
use App\Entity\Region;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Vich\UploaderBundle\Form\Type\VichImageType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class RecipeType extends AbstractType
{


    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'label' => 'Nom de la recette'
            ])
            ->add( 'cooking_time', IntegerType::class, [
            'label' => 'Temps de préparation (en min)'
        ])
            ->add('imageFile', VichImageType::class, [
                'label'=>'Image de la recette',
                'label_attr' => [
                    'class' => 'label_Image'
                ],
            'required' => false,
            'delete_label' => 'Supprimer l\'image',
            'download_label' => 'Télécharger l\'image',
            ])

            ->add('category', EntityType::class, [
                'class' => Category::class,
            'label' => 'Categorie',
                'choice_label' => 'name'
            ])
            ->add('region', EntityType::class, [
                'class' => Region::class,
            'label' => 'Région de france',
                'choice_label' => 'name'
            ])
            ->add('ingredients', EntityType::class, [
                 'class' => Ingredient::class,
            'multiple' => true,
                'choice_label' => 'name',
                'attr' => [
                    'class' => 'select-tags'
                ]
            ])
            ->add('description', TextareaType::class, [
            'label' => 'Étapes de la recette'
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}
