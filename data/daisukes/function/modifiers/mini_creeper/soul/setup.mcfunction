# Anima acabada de crear, al cos del mob: hitbox de 0,7 blocs (es pot picar), a qui empaita i cap on surt
tag @s add daisukes.soul
tag @s add daisukes.soul_launch
data merge entity @s {width: 0.7f, height: 0.7f, response: true}
scoreboard players operation @s daisukes.soul_id = #prey daisukes.soul
scoreboard players set @s daisukes.soul 0
# Disparada amunt, inclinada entre 30 i 80 graus, cap a qualsevol costat
execute store result entity @s Rotation[0] float 1 run random value -180..179
execute store result entity @s Rotation[1] float 1 run random value -80..-30
# Si ja l'empaiten les que toca (#cap), aquesta se'n va cap al cel sense fer res
execute if score #n daisukes.soul >= #cap daisukes.soul run tag @s add daisukes.soul_free
