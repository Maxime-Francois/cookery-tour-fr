<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Ingredient;
use App\Entity\Recipe;
use App\Entity\Region;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Vich\UploaderBundle\Form\Type\VichImageType;

class RecipeType extends AbstractType
{

    // public function __construct(private UrlGeneratorInterface $url){


    // }


    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('cooking_time')
            ->add('imageFile', VichImageType::class, [
                'label'=>'Image de la recette',
                'label_attr' => [
                    'class' => 'label_Image'
                ]
            ])

            ->add('category', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'name'
            ])
            ->add('region', EntityType::class, [
                'class' => Region::class,
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
        ->add('description')
                // 'search' => $this->url->generate('ingredients'),
                // 'label_property' => 'name',
                // 'value_property' => 'id',
            ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}
