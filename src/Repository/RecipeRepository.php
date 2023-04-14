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
            ->getResult();
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
    //find/search recipe by ingredient name
    public function findByIngredient($ingredient)
    {
        return $this->createQueryBuilder('r')
            ->join('r.ingredients', 'i')
            ->where('i.name LIKE :ingredient')
            ->setParameter('ingredient', '%' . $ingredient . '%')
            ->getQuery()
            ->getResult();
    }

    /**
     * @return Recipe[] Returns an array of Recipe by key word
     * 
     * @param keyWord ingredient / region / recipe (name)
     */
    public function search($keyWord): array
    {
        return $this->createQueryBuilder('r')
            ->innerJoin('r.ingredients', 'i')
            ->innerJoin('r.region', 'g')
            ->where('i.name LIKE :keyWord')
            ->orWhere('g.name LIKE :keyWord')
            ->orWhere('r.name LIKE :keyWord')
            ->setParameter('keyWord', '%' . $keyWord . '%')
            ->getQuery()
            ->getResult();
    }

    
}
