tag @s remove daisukes.roots_taut
execute if entity @s[tag=daisukes.roots_red] run data merge entity @s {block_state: {Name: "minecraft:crimson_hyphae", Properties: {axis: "z"}}}
execute unless entity @s[tag=daisukes.roots_red] run data merge entity @s {block_state: {Name: "minecraft:mangrove_wood", Properties: {axis: "z"}}}
