scoreboard players set #min daisukes.earth_q 2147483647
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] run scoreboard players operation #min daisukes.earth_q < @s daisukes.earth_q
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] if score @s daisukes.earth_q = #min daisukes.earth_q at @s run function daisukes:modifiers/living_earth/fade_block
