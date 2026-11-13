# Com a l'entitat. Gravetat x1/8; i com que la caiguda de la mateixa alcada es molt mes suau, la distancia
# segura x8 i el mal x1/8 (sense aixo, cada salt normal treia mig cor en tornar a terra).
# Si ja els te, "modifier add" falla i no passa res
tag @s add daisukes.moon
attribute @s minecraft:gravity modifier add daisukes:moon -0.875 add_multiplied_total
attribute @s minecraft:safe_fall_distance modifier add daisukes:moon 7 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add daisukes:moon -0.875 add_multiplied_total
