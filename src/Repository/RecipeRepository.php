<?php

namespace App\Repository;

use App\Entity\Recipe;
use App\Model\SearchData;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Response;

/**
 * @extends ServiceEntityRepository<Recipe>
 *
 * @method Recipe|null find($id, $lockMode = null, $lockVersion = null)
 * @method Recipe|null findOneBy(array $criteria, array $orderBy = null)
 * @method Recipe[]    findAll()
 * @method Recipe[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Recipe::class);
    }

    public function save(Recipe $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Recipe $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

   /**
    * @return Recipe[] Returns an array of Recipe objects
    */
   public function findAllByRegion($regionName): array
   {
       return $this->createQueryBuilder('p')
            ->innerJoin('p.region', 't')
            ->where('t.name = :regionName')
            ->setParameter('regionName', $regionName)
            ->orderBy('t.name', 'DESC')
            ->getQuery()
            ->getResult()
       ;
   }

    // Find/search recipes by name
    public function findRecipesByName(string $query)
    {
        $qb = $this->createQueryBuilder('s');
        $qb
            ->where( 
                $qb->expr()->andX(
                    $qb->expr()->orX(
                        $qb->expr()->like('s.name', ':query'),
                       
                    ),
                   
                )
            )
            ->setParameter('query', '%' . $query . '%');
        return $qb
            ->getQuery()
            ->getResult();
    }

    /**
     * @return Recipe[] Returns an array of Recipe by user id
     */
    public function findAllByUserId($userId): array
    {
        return $this->createQueryBuilder('r')
    
            ->where('r.user_id = :userId')
            ->setParameter('userId', $userId)
            ->getQuery()
            ->getResult();
    }

 

    // Find/search recipes by name
    // public function findIngredientByName(string $query)
    // {
    //     $qb = $this->createQueryBuilder('s');
    //     $qb
    //         ->where(
    //             $qb->expr()->andX(
    //                 $qb->expr()->orX(
    //                     $qb->expr()->like('s.name', ':query'),

    //                 ),

    //             )
    //         )
    //         ->setParameter('query', '%' . $query . '%');
    //     return $qb
    //         ->getQuery()
    //         ->getResult();
    // }

//    public function findOneBySomeField($value): ?Recipe
//    {
//        return $this->createQueryBuilder('r')
//            ->andWhere('r.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
