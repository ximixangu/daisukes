# Com a jugador. Quant s'ha mogut durant l'ultim temps? (en decimes de bloc)
execute store result score #x daisukes.shadow run data get entity @s Pos[0] 10
execute store result score #z daisukes.shadow run data get entity @s Pos[2] 10
scoreboard players operation #dx daisukes.shadow = #x daisukes.shadow
scoreboard players operation #dx daisukes.shadow -= @s daisukes.shadow_x
scoreboard players operation #dz daisukes.shadow = #z daisukes.shadow
scoreboard players operation #dz daisukes.shadow -= @s daisukes.shadow_z

# Mes de 5 blocs en un temps (elitres, cavall, acaba de reapareixer...): aquest cop no salta
execute unless score #dx daisukes.shadow matches -50..50 run return 0
execute unless score #dz daisukes.shadow matches -50..50 run return 0

# Desti: on sera d'aqui a 2 temps (quan colpeja) si continua movent-se igual
scoreboard players operation #x daisukes.shadow += #dx daisukes.shadow
scoreboard players operation #x daisukes.shadow += #dx daisukes.shadow
scoreboard players operation #z daisukes.shadow += #dz daisukes.shadow
scoreboard players operation #z daisukes.shadow += #dz daisukes.shadow
data modify storage daisukes:shadow target.pos set from entity @s Pos
execute store result storage daisukes:shadow target.pos[0] double 0.1 run scoreboard players get #x daisukes.shadow
execute store result storage daisukes:shadow target.pos[2] double 0.1 run scoreboard players get #z daisukes.shadow

# La seva ombra hi salta
scoreboard players operation #me daisukes.shadow = @s daisukes.shadow
execute as @e[type=mannequin,tag=daisukes.shadow] if score @s daisukes.shadow = #me daisukes.shadow at @s run function daisukes:modifiers/shadow/jump with storage daisukes:shadow target
