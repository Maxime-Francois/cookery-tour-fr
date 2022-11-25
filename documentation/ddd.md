# Dictionnaire des données



## RECIPE (recettes)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID recette|
|**name**|VARCHAR(255)|NOT NULL|Nom de la recette|
|**description**|VARCHAR(255)|NOT NULL|déscriptif de la recette|
|**cooking_time**|INT|NOT NULL|temps de cuisson|
|||||


## REGION (région)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID region|
|**name**|VARCHAR(255)|NOT NULL|Nom de la région|
|||||

## CATEGORY (categorie)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID categorie|
|**name**|VARCHAR(255)|NOT NULL|Nom de la catégorie|
|||||


## USER (utilisateur)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID type|
|**username**|VARCHAR(255)|NOT NULL|Nom de l'utilisateur|
|**email**|VARCHAR(255)|NOT NULL, UNIQUE|Email de l'utilisateur|
|**password**|VARCHAR(64)|NOT NULL|Mot de passe de l'utilisateur|
|**role**|VARCHAR(64)|NOT NULL|Role de l'utilisateur|
|||||