# Nomes el que s'hi va afegir: el que surt ara menys el que surt del bloc d'abans, que es torna a posar i s'hi queda
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
tag @e[type=minecraft:item,distance=..0.01,nbt={Age: 0s}] add daisukes.earth_back
function daisukes:modifiers/living_earth/put/prev
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
tag @e[type=minecraft:item,distance=..0.01,nbt={Age: 0s},tag=!daisukes.earth_back] add daisukes.earth_keep
scoreboard players set #a daisukes.earth 0
scoreboard players set #b daisukes.earth 0
execute store result score #a daisukes.earth run data get entity @e[type=minecraft:item,tag=daisukes.earth_back,limit=1] Item.count
execute store result score #b daisukes.earth run data get entity @e[type=minecraft:item,tag=daisukes.earth_keep,limit=1] Item.count
kill @e[type=minecraft:item,tag=daisukes.earth_keep]
scoreboard players operation #a daisukes.earth -= #b daisukes.earth
execute if score #a daisukes.earth matches ..0 run kill @e[type=minecraft:item,tag=daisukes.earth_back]
execute if score #a daisukes.earth matches 1.. store result entity @e[type=minecraft:item,tag=daisukes.earth_back,limit=1] Item.count int 1 run scoreboard players get #a daisukes.earth
function daisukes:modifiers/living_earth/deliver
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] run scoreboard players set @s daisukes.earth_t 0
function daisukes:modifiers/living_earth/unplace
