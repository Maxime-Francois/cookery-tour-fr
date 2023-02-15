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
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class RecipeType extends AbstractType
{

    // public function __construct(private UrlGeneratorInterface $url){


    // }


    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('description')
            ->add('cooking_time')
            ->add('image')

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
            'multiple' => 'true',
            'choice_label' => 'name'
        ])
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
