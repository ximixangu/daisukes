# Com a jugador viu, als seus peus. Cada tick

# Aura d'enderman: tothom veu qui esta afectat
execute if score #t daisukes.ender_step matches 0 run particle minecraft:portal ~ ~1 ~ 0.3 0.6 0.3 0.4 1

# Espera del salt amunt i dels avisos
scoreboard players remove @s[scores={daisukes.ender_step=1..}] daisukes.ender_step 1

# Saltar: TP amunt (des de terra, sense muntura i si hi cap el cap)
execute unless score @s daisukes.ender_step matches 1.. if predicate daisukes:ender_step/jump if predicate daisukes:ender_step/ready positioned ~ ~2 ~ if predicate daisukes:ender_step/open positioned ~ ~0.8 ~ if predicate daisukes:ender_step/open at @s run function daisukes:modifiers/ender_step/up

# Bloc on es ara (x, z) i quant ha canviat des del tick anterior (el primer cop, res)
data modify storage daisukes:ender_step pos set from entity @s Pos
execute store result score #x daisukes.ender_step run data get storage daisukes:ender_step pos[0]
execute store result score #z daisukes.ender_step run data get storage daisukes:ender_step pos[2]
execute unless score @s daisukes.ender_step_x = @s daisukes.ender_step_x run scoreboard players operation @s daisukes.ender_step_x = #x daisukes.ender_step
execute unless score @s daisukes.ender_step_z = @s daisukes.ender_step_z run scoreboard players operation @s daisukes.ender_step_z = #z daisukes.ender_step
scoreboard players operation #dx daisukes.ender_step = #x daisukes.ender_step
scoreboard players operation #dx daisukes.ender_step -= @s daisukes.ender_step_x
scoreboard players operation #dz daisukes.ender_step = #z daisukes.ender_step
scoreboard players operation #dz daisukes.ender_step -= @s daisukes.ender_step_z
scoreboard players operation @s daisukes.ender_step_x = #x daisukes.ender_step
scoreboard players operation @s daisukes.ender_step_z = #z daisukes.ender_step

# Nomes compta un pas caminant a un bloc del costat (no teletransports, perles, caigudes ni muntures)
execute if score #dx daisukes.ender_step matches 0 if score #dz daisukes.ender_step matches 0 run return 0
execute unless score #dx daisukes.ender_step matches -1..1 run return 0
execute unless score #dz daisukes.ender_step matches -1..1 run return 0
execute unless predicate daisukes:ender_step/ready run return 0
execute unless predicate daisukes:ender_step/moving run return 0

# A l'aigua, als portals i a les escales camina normal (si no, no es podria quedar mai dins d'un portal)
execute if block ~ ~ ~ #daisukes:ender_step/stop run return 0

# Ha trepitjat el bloc del davant: el salta (corrent, mes blocs). Direccio del pas i on queda dins del bloc
execute store result storage daisukes:ender_step dir.dx int 1 run scoreboard players get #dx daisukes.ender_step
execute store result storage daisukes:ender_step dir.dz int 1 run scoreboard players get #dz daisukes.ender_step
execute store result storage daisukes:ender_step dir.ox double -0.2 run scoreboard players get #dx daisukes.ender_step
execute store result storage daisukes:ender_step dir.oz double -0.2 run scoreboard players get #dz daisukes.ender_step

# Ajupit no baixa mai
scoreboard players operation #min daisukes.ender_step = #drop daisukes.ender_step
execute if predicate daisukes:ender_step/sneak run scoreboard players set #min daisukes.ender_step 0
scoreboard players set #probe daisukes.ender_step 0
scoreboard players set #done daisukes.ender_step 0
execute store result storage daisukes:ender_step dir.far int 1 run scoreboard players get #walk daisukes.ender_step
execute if predicate daisukes:ender_step/sprint store result storage daisukes:ender_step dir.far int 1 run scoreboard players get #run daisukes.ender_step
function daisukes:modifiers/ender_step/skip with storage daisukes:ender_step dir

# Corrent no hi ha lloc tan lluny: prova-ho com caminant
execute if score #done daisukes.ender_step matches 0 if predicate daisukes:ender_step/sprint store result storage daisukes:ender_step dir.far int 1 run scoreboard players get #walk daisukes.ender_step
execute if score #done daisukes.ender_step matches 0 if predicate daisukes:ender_step/sprint run function daisukes:modifiers/ender_step/skip with storage daisukes:ender_step dir
execute if score #done daisukes.ender_step matches 1 run return run function daisukes:modifiers/ender_step/blink

# No hi ha lloc: es queda on ha trepitjat, si no hi cau de massa amunt (ajupit no cau mai). Si no, enrere
execute if predicate daisukes:ender_step/sneak run return 0
function daisukes:modifiers/ender_step/stand
execute if score #done daisukes.ender_step matches 0 run function daisukes:modifiers/ender_step/back
