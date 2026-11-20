# Les animes que queden s'esvaeixen
execute as @e[type=minecraft:interaction,tag=daisukes.soul] at @s run function daisukes:modifiers/soul_escape/soul/fizzle
function daisukes:modifiers/soul_escape/clear
scoreboard objectives remove daisukes.soul
scoreboard objectives remove daisukes.soul_id
data remove storage daisukes:soul ready
