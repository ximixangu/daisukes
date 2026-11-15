scoreboard players add #time daisukes.bspot 1

# Cada 1 s, carregues noves on sigueu ara
scoreboard players add #fill daisukes.bspot 1
execute if score #fill daisukes.bspot matches 20.. run function daisukes:modifiers/blind_spot/fill

# Carregues apagades i enceses
execute as @e[type=minecraft:marker,tag=daisukes.bspot,tag=!daisukes.bspot_lit] at @s run function daisukes:modifiers/blind_spot/charge
execute as @e[type=minecraft:marker,tag=daisukes.bspot_lit] at @s run function daisukes:modifiers/blind_spot/fuse
