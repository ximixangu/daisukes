# Anima acabada de crear, al cos del mob: hitbox de 0,7 blocs (es pot picar), a qui empaita i cap on surt
tag @s add daisukes.soul
tag @s add daisukes.soul_launch
data merge entity @s {width: 0.7f, height: 0.7f, response: true}
scoreboard players operation @s daisukes.soul_id = #prey daisukes.soul
# Si n'hi ha mes d'una, cada una espera 4 ticks mes dins del cos (soul/launch compta des d'aqui)
scoreboard players operation @s daisukes.soul = #delay daisukes.soul
scoreboard players remove #delay daisukes.soul 4
# Disparada amunt, inclinada entre 30 i 80 graus; la seguent, 120 graus mes enlla
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw daisukes.soul
scoreboard players add #yaw daisukes.soul 120
execute store result entity @s Rotation[1] float 1 run random value -80..-30
# Si ja l'empaiten les que toca (#cap), aquesta se'n va cap al cel sense fer res
execute if score #n daisukes.soul >= #cap daisukes.soul run tag @s add daisukes.soul_free
scoreboard players add #n daisukes.soul 1
