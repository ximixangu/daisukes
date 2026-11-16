# Torna a qui l'ha posat, com si l'hagues picat amb toc de seda: li surt als peus i el recull (si no hi cap, s'hi queda)
execute if entity @s[tag=daisukes.earth_add] run return run function daisukes:modifiers/living_earth/give_add
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
tag @e[type=minecraft:item,distance=..0.01,nbt={Age: 0s}] add daisukes.earth_back
function daisukes:modifiers/living_earth/deliver
function daisukes:modifiers/living_earth/clear_cell
# (no l'ha trencat ningu: que cap cursor ho prengui per un bloc trencat)
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] run scoreboard players set @s daisukes.earth_t 0
function daisukes:modifiers/living_earth/unplace
