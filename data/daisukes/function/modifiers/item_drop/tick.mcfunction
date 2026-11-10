execute as @a store result score @s daisukes.random_drop run random value 1..35
execute as @a run scoreboard players operation @s daisukes.item_drop += @s daisukes.random_drop

execute as @a if score @s daisukes.item_drop matches 2000.. run function daisukes:modifiers/item_drop/trigger_drop