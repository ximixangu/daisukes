# Tipus a l'atzar entre els que ja poden sortir (el volt, que mata, surt el doble).
# La primera orba de cada jugador sempre es de fusta, per aprendre
execute store result score #r daisukes.orb run random value 0..599
scoreboard players operation #r daisukes.orb %= #kinds daisukes.orb
execute if entity @s[tag=daisukes.orb_rookie] run scoreboard players set #r daisukes.orb 0
tag @s remove daisukes.orb_rookie
execute if score #r daisukes.orb matches 0 run function daisukes:modifiers/orbital/wood/spawn
execute if score #r daisukes.orb matches 1..2 run function daisukes:modifiers/orbital/volt/spawn
execute if score #r daisukes.orb matches 3 run function daisukes:modifiers/orbital/slime/spawn
execute if score #r daisukes.orb matches 4 run function daisukes:modifiers/orbital/ender/spawn
execute if score #r daisukes.orb matches 5 run function daisukes:modifiers/orbital/copper/spawn
