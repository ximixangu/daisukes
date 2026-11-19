execute if block ~ ~ ~ #minecraft:lightning_rods run return run function daisukes:modifiers/overcharge/pulse/rod_found
execute if block ~ ~1 ~ #minecraft:lightning_rods positioned ~ ~1 ~ run return run function daisukes:modifiers/overcharge/pulse/rod_found
execute if block ~ ~2 ~ #minecraft:lightning_rods positioned ~ ~2 ~ run return run function daisukes:modifiers/overcharge/pulse/rod_found
execute if block ~ ~3 ~ #minecraft:lightning_rods positioned ~ ~3 ~ run return run function daisukes:modifiers/overcharge/pulse/rod_found
scoreboard players add #rz daisukes.oc 1
execute if score #rz daisukes.oc matches ..6 positioned ~ ~ ~1 run function daisukes:modifiers/overcharge/pulse/rod_cell
