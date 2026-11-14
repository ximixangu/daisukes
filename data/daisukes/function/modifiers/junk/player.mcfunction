# Com a jugador, als seus peus. Mateix sistema que cursed_potato o item_drop: cada tick suma un valor a l'atzar
# (1..5, de mitjana 3) i, en arribar al llindar, toca brossa. Per tenir-ne mes, abaixa els llindars (o puja'ls per menys)

# A l'inventari: a 60, un cop cada segon mes o menys
execute store result score #junk_add daisukes.math run random value 1..5
scoreboard players operation @s daisukes.junk += #junk_add daisukes.math
execute if score @s daisukes.junk matches 60.. run function daisukes:modifiers/junk/stuff

# A terra: a 45, un cop cada 0,75 s mes o menys
execute store result score #junk_add daisukes.math run random value 1..5
scoreboard players operation @s daisukes.junk_drop += #junk_add daisukes.math
execute if score @s daisukes.junk_drop matches 45.. run function daisukes:modifiers/junk/drop
