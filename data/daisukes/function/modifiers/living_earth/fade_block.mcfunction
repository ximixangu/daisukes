# Com a un negre: fora el bloc (si encara es el seu) i la capa. Les ombres no tenen bloc
execute if entity @s[tag=daisukes.earth_sub] if block ~ ~ ~ #daisukes:living_earth/sub run function daisukes:modifiers/living_earth/clear_cell
execute unless entity @s[tag=daisukes.earth_ghost] unless entity @s[tag=daisukes.earth_sub] run function daisukes:modifiers/living_earth/unset with entity @s block_state
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 2 normal
scoreboard players reset @s daisukes.earth_q
kill @s
