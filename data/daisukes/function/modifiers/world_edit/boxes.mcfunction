# Caixes vives: compte enrere, avisos i intercanvi. Primer les blaves (que fan l'intercanvi i s'enduen la seva
# vermella), despres les vermelles que quedin. #live torna a comptar les que queden
scoreboard players set #live daisukes.we 0
execute as @e[type=minecraft:marker,tag=daisukes.we_blue] at @s run function daisukes:modifiers/world_edit/box/tick_blue
execute as @e[type=minecraft:marker,tag=daisukes.we_red] at @s run function daisukes:modifiers/world_edit/box/tick_red
