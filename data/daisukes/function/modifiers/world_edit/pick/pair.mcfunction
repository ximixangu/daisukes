# Com a jugador: dues de les candidates a l'atzar, una blava i una vermella. La seguent parella, d'aqui a #every.
# La blava porta la dimensio (per tornar els blocs de la caixa forta al lloc bo)
scoreboard players operation @s daisukes.we_t = #every_t daisukes.we
scoreboard players add #next daisukes.we 1
data remove storage daisukes:world_edit dim
execute if dimension minecraft:overworld run data modify storage daisukes:world_edit dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage daisukes:world_edit dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage daisukes:world_edit dim set value "minecraft:the_end"
# Amb el plugin Fahare es juga a fahare:overworld (sense Fahare, aquesta linia falla i no fa res)
execute if dimension fahare:overworld run data modify storage daisukes:world_edit dim set value "fahare:overworld"
execute unless data storage daisukes:world_edit dim run data modify storage daisukes:world_edit dim set from entity @s Dimension
execute as @e[type=minecraft:marker,tag=daisukes.we_cand,sort=random,limit=1] at @s run function daisukes:modifiers/world_edit/box/blue
execute as @e[type=minecraft:marker,tag=daisukes.we_cand,sort=random,limit=1] at @s run function daisukes:modifiers/world_edit/box/red
scoreboard players add #live daisukes.we 2
