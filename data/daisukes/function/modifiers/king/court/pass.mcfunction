# Cada mig segon. Es torna a mirar qui es de la cort de cada Rei: qui n'ha sortit perd la proteccio en 1 s
scoreboard players reset * daisukes.king_sub
scoreboard players add #pulse daisukes.king 1
execute if score #pulse daisukes.king matches 4.. run scoreboard players set #pulse daisukes.king 0
execute as @e[type=minecraft:text_display,tag=daisukes.king_reign] at @s run function daisukes:modifiers/king/court/hold

# Corones sense Rei: una mica de brillantor
execute as @e[type=minecraft:text_display,tag=daisukes.king_crown,tag=!daisukes.king_reign] at @s run particle minecraft:wax_on ~ ~0.5 ~ 0.15 0.15 0.15 0 1
