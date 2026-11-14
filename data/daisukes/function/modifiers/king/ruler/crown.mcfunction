# Com al monstre que acaba de rebre la corona: ara es el Rei. Brilla daurat (l'equip) i te 5 cors mes, amb la
# vida plena. La barra de la cort ensenya el seu nom i la seva vida
tag @s remove daisukes.king_heir
tag @s add daisukes.king
team join daisukes.king @s
# Si era de la cort d'un altre Rei, ja no es invencible (el Rei mai ho es)
execute if score @s daisukes.king_sub matches 1.. run effect clear @s minecraft:resistance
scoreboard players reset @s daisukes.king_sub
attribute @s minecraft:max_health modifier add daisukes:king 10 add_value
data merge entity @s {Health: 1024f}
effect give @s minecraft:glowing 2 0 true
function daisukes:modifiers/king/bar/reign with storage daisukes:king arg
