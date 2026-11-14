# Lloc trobat: carrega invisible, sense cap avis. Mai a menys de 6 blocs de ningu (fora de l'abast d'ajupir-se)
# ni a 2 d'una altra
execute if entity @e[type=minecraft:player,gamemode=!spectator,distance=..6] run return 0
execute if entity @e[type=minecraft:marker,tag=daisukes.bspot,distance=..2] run return 0
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.bspot"]}
scoreboard players set #placed daisukes.bspot 1
