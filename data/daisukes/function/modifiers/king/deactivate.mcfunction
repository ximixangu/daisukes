# Les corones es desfan en pols d'or i els Reis tornen a ser monstres normals
execute as @e[type=minecraft:text_display,tag=daisukes.king_crown] at @s run function daisukes:modifiers/king/crown/poof
execute as @e[tag=daisukes.king] run function daisukes:modifiers/king/ruler/uncrown
tag @e[tag=daisukes.king_heir] remove daisukes.king_heir
tag @e[tag=daisukes.king_reject] remove daisukes.king_reject
tag @e[tag=daisukes.king_pick] remove daisukes.king_pick
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
tag @e[tag=daisukes.king_now] remove daisukes.king_now
tag @a remove daisukes.king_wearer
tag @a remove daisukes.king_slayer
tag @a remove daisukes.king_usurper

# La cort deixa de ser invencible (la dels chunks sense carregar, en 1 s: la Resistencia dura aixo)
execute as @e[scores={daisukes.king_sub=1..}] run effect clear @s minecraft:resistance

# Barres de cada cort (daisukes:king_1 ... _#ids)
execute if score #ids daisukes.king matches 1.. run function daisukes:modifiers/king/bar/clear

team remove daisukes.king
scoreboard objectives remove daisukes.king
scoreboard objectives remove daisukes.king_id
scoreboard objectives remove daisukes.king_t
scoreboard objectives remove daisukes.king_fx
scoreboard objectives remove daisukes.king_sub
data remove storage daisukes:king arg
data remove storage daisukes:king bars
data remove storage daisukes:king sweep
