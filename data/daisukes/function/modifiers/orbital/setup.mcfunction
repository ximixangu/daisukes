# Orba acabada de crear (etiqueta orb_new): identificador, amo i edat, i es col.loca davant teu
execute store result score #id daisukes.orb run scoreboard players add #next daisukes.orb 1
scoreboard players operation @e[tag=daisukes.orb_new] daisukes.orb_id = #id daisukes.orb
scoreboard players operation @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_owner = #owner daisukes.orb
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_age 0
# Valors per a les pells en aquest primer tick (encara a mida zero, contorn blanc)
scoreboard players set #age daisukes.orb 0
scoreboard players set #left daisukes.orb 100
scoreboard players set #glow daisukes.orb 16777215
scoreboard players set #flash daisukes.orb 0
execute as @e[type=minecraft:interaction,tag=daisukes.orb_new] run rotate @s ~ 0
execute as @e[type=minecraft:interaction,tag=daisukes.orb_new,tag=!daisukes.orb_slimelet] store result entity @s Rotation[0] float 1 run random value -180..179
execute store result score #t daisukes.orb run random value 0..1
execute if score #t daisukes.orb matches 1 run tag @e[type=minecraft:interaction,tag=daisukes.orb_new,tag=!daisukes.orb_slimelet] add daisukes.orb_left
execute as @e[type=minecraft:interaction,tag=daisukes.orb_new] run function daisukes:modifiers/orbital/move
