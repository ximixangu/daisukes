execute as @a store result score @s random_add run random value 1..5
execute as @a run scoreboard players operation @s potato_timer += @s random_add

execute as @a[scores={potato_timer=300..}] run function daisukes:modifiers/cursed_potato/try_give_potato

execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{hot_potato:1b}}}]}] at @s run particle flame ~ ~1.2 ~ 1 1 1 0.05 60 normal

execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{hot_potato:1b}}}]}] at @s run playsound minecraft:entity.ghast.hurt player @s ~ ~ ~ 0.8 0.7