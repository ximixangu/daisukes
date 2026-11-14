# Tick seguent al clic, com a marcador: raig des dels ulls del jugador que l'ha posat (el mes proper), amb la mirada ja al dia
data remove storage daisukes:heavy main
data remove storage daisukes:heavy off
data modify storage daisukes:heavy main set from entity @s data.main
data modify storage daisukes:heavy off set from entity @s data.off
scoreboard players set #step daisukes.heavy 0
execute as @e[type=minecraft:player,distance=..3,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/heavy_blocks/ray
kill @s
