<?php

namespace App\Entity;

use App\Repository\RegionRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RegionRepository::class)]
class Region
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\OneToMany(mappedBy: 'region', targetEntity: Recipe::class)]
    private Collection $recipe;

    public function __construct()
    {
        $this->recipe = new ArrayCollection();
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

    /**
     * @return Collection<int, Recipe>
     */
    public function getRecipe(): Collection
    {
        return $this->recipe;
    }

    public function addRecipe(Recipe $recipe): self
    {
        if (!$this->recipe->contains($recipe)) {
            $this->recipe->add($recipe);
            $recipe->setRegion($this);
        }

        return $this;
    }

    public function removeRecipe(Recipe $recipe): self
    {
        if ($this->recipe->removeElement($recipe)) {
            // set the owning side to null (unless already changed)
            if ($recipe->getRegion() === $this) {
                $recipe->setRegion(null);
            }
        }

        return $this;
    }
}
