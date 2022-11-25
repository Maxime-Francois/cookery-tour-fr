:
CATEGORY: id, name
HAS2, 01 RECIPE, 0N CATEGORY
:

REGION: id, name, i
HAS, 01 RECIPE, 0N REGION
RECIPE: id, name, description, cooking_time, i
WRITE, 0N USER, 11 RECIPE

:
:
FAVORITE, 0N USER, 0N RECIPE
USER: id, email, password, roles