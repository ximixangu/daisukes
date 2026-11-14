# Com al monstre que porta la corona sense ser el Rei d'aquesta cort (#cid): el Rei s'ha convertit (zombi ofegat,
# piglin zombificat, esquelet glacat...) i el monstre nou s'ha quedat la corona. Continua sent Rei (sense curar-se)
scoreboard players operation @s daisukes.king_id = #cid daisukes.king_id
tag @s add daisukes.king
team join daisukes.king @s
execute if score @s daisukes.king_sub matches 1.. run effect clear @s minecraft:resistance
scoreboard players reset @s daisukes.king_sub
attribute @s minecraft:max_health modifier add daisukes:king 10 add_value
effect give @s minecraft:glowing 2 0 true
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
function daisukes:modifiers/king/bar/reign with storage daisukes:king arg
