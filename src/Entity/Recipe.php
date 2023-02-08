<?php

namespace App\Entity;

use App\Repository\RecipeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RecipeRepository::class)]
class Recipe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $description = null;

    #[ORM\Column]
    private ?int $cooking_time = null;

    #[ORM\Column(length: 255)]
    private ?string $image = null;

    #[ORM\ManyToOne(inversedBy: 'recipe')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Region $region = null;

    #[ORM\ManyToOne(inversedBy: 'recipe')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Category $category = null;

    #[ORM\OneToMany(mappedBy: 'post', targetEntity: Favorite::class)]
    private Collection $likes;

    #[ORM\ManyToMany(targetEntity: User::class, mappedBy: 'favorites')]
    private Collection $user_favorites;

    #[ORM\Column(nullable: true)]
    private ?int $likes2 = null;

    public function __construct()
    {
        $this->likes = new ArrayCollection();
        $this->user_favorites = new ArrayCollection();
    }







    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getCookingTime(): ?int
    {
        return $this->cooking_time;
    }

    public function setCookingTime(int $cooking_time): self
    {
        $this->cooking_time = $cooking_time;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getRegion(): ?Region
    {
        return $this->region;
    }

    public function setRegion(?Region $region): self
    {
        $this->region = $region;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection<int, Favorite>
     */
    public function getLikes(): Collection
    {
        return $this->likes;
    }

    public function addLike(Favorite $like): self
    {
        if (!$this->likes->contains($like)) {
            $this->likes[] = ($like);
            $like->setPost($this);
        }

        return $this;
    }

    public function removeLike(Favorite $like): self
    {
        if ($this->likes->contains($like)) {
            $this->likes->removeElement($like);

            // set the owning side to null (unless already changed)
            if ($like->getPost() === $this) {
                $like->setPost(null);
            }
        }

        return $this;
    }

    public function isLikedByUser(User $user): bool
    {
        foreach ($this->likes as $like) {
            if ($like->getUser() === $user) {
                return true;
            }
        }

        return false;
    }

    /**
     * @return Collection<int, User>
     */
    public function getUserFavorites(): Collection
    {
        return $this->user_favorites;
    }

    public function addUserFavorite(User $userFavorite): self
    {
        if (!$this->user_favorites->contains($userFavorite)) {
            $this->user_favorites->add($userFavorite);
            $userFavorite->addFavorite($this);
        }

        return $this;
    }

    public function removeUserFavorite(User $userFavorite): self
    {
        if ($this->user_favorites->removeElement($userFavorite)) {
            $userFavorite->removeFavorite($this);
        }

        return $this;
    }

    public function getLikes2(): ?int
    {
        return $this->likes2;
    }

    public function setLikes2(?int $likes2): self
    {
        $this->likes2 = $likes2;

        return $this;
    }
}
