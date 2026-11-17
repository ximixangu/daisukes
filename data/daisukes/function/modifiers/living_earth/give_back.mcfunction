# El bloc surt (com si el piquessis amb toc de seda) i va als peus de l'amo, que el recull de seguida.
# Si te l'inventari ple, s'hi queda a terra (com si l'haguessis llancat)
scoreboard players operation #f daisukes.earth = @s daisukes.earth
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s daisukes.earth = #f daisukes.earth run tag @s add daisukes.earth_owner
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={"minecraft:silk_touch":1}]
setblock ~ ~ ~ minecraft:air
# (no l'ha trencat ningu: que cap cursor ho prengui per un bloc trencat)
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] run scoreboard players set @s daisukes.earth_k 0
particle minecraft:poof ~ ~ ~ 0.25 0.25 0.25 0 6 normal @a[distance=..32]
execute as @e[type=minecraft:item,distance=..1,nbt={Age: 0s}] run function daisukes:modifiers/living_earth/hand_over
execute as @a[tag=daisukes.earth_owner] at @s run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5 1.2
tag @a remove daisukes.earth_owner
function daisukes:modifiers/living_earth/unplace
