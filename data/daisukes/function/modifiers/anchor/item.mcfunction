# Com a cada objecte nou a terra (un sol cop). Si porta la marca, la hi treu; si es de l'ancorada d'ara, torna a qui l'ha
# llencat i, mentre l'encadenat espera, trenca baules
tag @s add daisukes.anchor_seen
execute unless items entity @s contents *[minecraft:custom_data~{daisukes_anchor:{}}] run return 0
scoreboard players set #nn daisukes.anchor 0
execute store result score #nn daisukes.anchor run data get entity @s Item.components."minecraft:custom_data".daisukes_anchor.n
execute if score #nn daisukes.anchor = #event daisukes.anchor unless score #event daisukes.anchor matches 0 run function daisukes:modifiers/anchor/gift
item modify entity @s contents daisukes:anchor/unmark
