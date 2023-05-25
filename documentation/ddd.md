# Dictionnaire des données



## RECIPE (recettes)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|id de la recette|
|**name**|VARCHAR(255)|NOT NULL|Nom de la recette|
|**description**|VARCHAR(255)|NOT NULL|déscriptif de la recette|
|**cooking_time**|INT|NOT NULL|temps de cuisson|
|**region_id**|INT|INDEX, NOT NULL|ID de la région|
|**category_id**|INT|INDEX, NOT NULL|ID de la région|
|**like2**|INT|NULL|likes de la recette|
|**user_id**|INT|NOT NULL|id du user créateur de la recette|
|**image_name**|VARCHAR(255)|NULL|image de la recette|
|**updated_at**|DATETIME|NULL|date de la mise à jour de la recette|
|**description**|LONGTEXT|NOT NULL|déscription de la recette|
|||||


## REGION (région)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|id de la région|
|**name**|VARCHAR(255)|NOT NULL|Nom de la région|
|||||

## CATEGORY (categorie)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|id de la catégorie|
|**name**|VARCHAR(255)|NOT NULL|Nom de la catégorie|
|||||


## USER (utilisateur)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|id de l'utilisateur|
|**username**|VARCHAR(255)|NOT NULL|Nom de l'utilisateur|
|**email**|VARCHAR(255)|NOT NULL, UNIQUE|Email de l'utilisateur|
|**password**|VARCHAR(64)|NOT NULL|Mot de passe de l'utilisateur|
|**role**|VARCHAR(64)|NOT NULL|Role de l'utilisateur|
|||||

## INGREDIENT (ingrédients)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|id de l'ingredient|
|**name**|VARCHAR(255)|NOT NULL|Nom de l'ingredient|
|||||

&nbsp;
## TABLES DE JOINTURES
&nbsp;

## RECIPE_INGREDIENT (jointure recettes et ingrédients)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**recipe_id**|INT|Primary Key, INDEX, NOT NULL|id de la recette|
|**ingredient_id**|INT|Primary key, INDEX, NOT NULL|id de l'ingredient|
|||||

## USER_RECIPE (jointure recettes et ingrédients)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**user_id**|INT|Primary Key, INDEX, NOT NULL|id du user|
|**recipe_id**|INT|Primary key, INDEX, NOT NULL|id de la recette|
|||||



