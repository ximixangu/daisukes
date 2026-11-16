# Molt tensa: la fusta s'esclareix (com pelada) i grinyola
tag @s add daisukes.roots_taut
execute if entity @s[tag=daisukes.roots_red] run data merge entity @s {block_state: {Name: "minecraft:stripped_crimson_hyphae", Properties: {axis: "z"}}}
execute unless entity @s[tag=daisukes.roots_red] run data merge entity @s {block_state: {Name: "minecraft:stripped_mangrove_wood", Properties: {axis: "z"}}}
playsound minecraft:block.mangrove_roots.step player @a ~ ~ ~ 0.6 0.6
