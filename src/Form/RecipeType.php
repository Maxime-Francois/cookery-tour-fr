<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Recipe;
use App\Entity\Region;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class RecipeType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('category', EntityType::class,[
                'class' => Category::class,
                'choice_label' => 'name' 
            ])
            ->add('region', EntityType::class,[
                'class' => Region::class,
                'choice_label' => 'name' 
            ])
            ->add('description')
            ->add('cooking_time')
            ->add('image');
        
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}
