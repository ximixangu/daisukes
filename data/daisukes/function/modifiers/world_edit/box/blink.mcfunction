# Com a caixa, al seu origen, el darrer segon: les arestes s'apaguen i s'encenen cada 2 ticks
scoreboard players operation #b daisukes.we = @s daisukes.we_t
scoreboard players operation #b daisukes.we %= #4 daisukes.we
execute if score #b daisukes.we matches 0 as @e[type=minecraft:block_display,tag=daisukes.we_edge,distance=..0.01] run data merge entity @s {Glowing: 0b}
execute if score #b daisukes.we matches 2 as @e[type=minecraft:block_display,tag=daisukes.we_edge,distance=..0.01] run data merge entity @s {Glowing: 1b}
