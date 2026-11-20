# Macro: {x, y, z}. Com a l'anima: mou el seu centre (0,35 per sobre de la posicio) en coordenades locals,
# mirant als ulls del jugador (soul_me): x de costat, y amunt i z cap a ell (negatiu, enrere)
$execute at @s positioned ~ ~0.35 ~ facing entity @a[tag=daisukes.soul_me,limit=1] eyes positioned ^$(x) ^$(y) ^$(z) positioned ~ ~-0.35 ~ run tp @s ~ ~ ~
