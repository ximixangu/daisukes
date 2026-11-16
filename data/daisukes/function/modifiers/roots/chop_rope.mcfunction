scoreboard players operation @s daisukes.roots_c += #pts daisukes.roots
execute if entity @s[tag=daisukes.roots_red] run playsound minecraft:block.stem.hit player @a ~ ~ ~ 1 0.9
execute unless entity @s[tag=daisukes.roots_red] run playsound minecraft:block.wood.hit player @a ~ ~ ~ 1 0.9
execute if entity @s[tag=daisukes.roots_red] run particle minecraft:block{block_state: "minecraft:crimson_hyphae"} ^ ^ ^0.3 0.1 0.1 0.1 0 6 normal @a[distance=..32]
execute unless entity @s[tag=daisukes.roots_red] run particle minecraft:block{block_state: "minecraft:mangrove_wood"} ^ ^ ^0.3 0.1 0.1 0.1 0 6 normal @a[distance=..32]
execute if score @s daisukes.roots_c matches 4.. run function daisukes:modifiers/roots/snap
