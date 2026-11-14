# Com a monstre que deixa de ser Rei sense morir (la corona s'esvaeix, s'acaba el modificador...)
tag @s remove daisukes.king
scoreboard players reset @s daisukes.king_id
attribute @s minecraft:max_health modifier remove daisukes:king
execute if entity @s[team=daisukes.king] run team leave @s
effect clear @s minecraft:glowing
