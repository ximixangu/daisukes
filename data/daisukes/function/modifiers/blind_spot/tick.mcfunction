scoreboard players add #time daisukes.bspot 1
# La tensio puja: als 50 s i als 100 s, mes carregues al voltant
execute if score #time daisukes.bspot matches 1000 run function daisukes:modifiers/blind_spot/stage {cap: 24}
execute if score #time daisukes.bspot matches 2000 run function daisukes:modifiers/blind_spot/stage {cap: 24}

# Cada 1 s, carregues noves on sigueu ara
scoreboard players add #fill daisukes.bspot 1
execute if score #fill daisukes.bspot matches 20.. run function daisukes:modifiers/blind_spot/fill

# Carregues apagades i enceses
execute as @e[type=minecraft:marker,tag=daisukes.bspot,tag=!daisukes.bspot_lit] at @s run function daisukes:modifiers/blind_spot/charge
execute as @e[type=minecraft:marker,tag=daisukes.bspot_lit] at @s run function daisukes:modifiers/blind_spot/fuse
