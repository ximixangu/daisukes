execute positioned ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_tuft", "daisukes.roots_new"], block_state: {Name: "minecraft:mangrove_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.0872f, 0f, 0.9962f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0579f, -0.4f, -0.0406f], scale: [0.1f, 0.1f, 0.1f]}}
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_r 1
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
execute positioned ~ ~ ~ run particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.15 0.05 0.15 0 10 normal @a[distance=..32]
execute positioned ~1 ~ ~ run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_tuft", "daisukes.roots_new"], block_state: {Name: "minecraft:mangrove_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.4617f, 0f, 0.887f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0696f, -0.4f, 0.0123f], scale: [0.1f, 0.1f, 0.1f]}}
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_r 2
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
execute positioned ~1 ~ ~ run particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.15 0.05 0.15 0 10 normal @a[distance=..32]
execute positioned ~ ~ ~1 run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_tuft", "daisukes.roots_new"], block_state: {Name: "minecraft:mangrove_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.766f, 0f, 0.6428f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0406f, -0.4f, 0.0579f], scale: [0.1f, 0.1f, 0.1f]}}
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_r 3
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
execute positioned ~ ~ ~1 run particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.15 0.05 0.15 0 10 normal @a[distance=..32]
execute positioned ~1 ~ ~1 run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_tuft", "daisukes.roots_new"], block_state: {Name: "minecraft:mangrove_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.9537f, 0f, 0.3007f], right_rotation: [0f, 0f, 0f, 1f], translation: [0.0123f, -0.4f, 0.0696f], scale: [0.1f, 0.1f, 0.1f]}}
scoreboard players set @e[tag=daisukes.roots_new] daisukes.roots_r 4
scoreboard players operation @e[tag=daisukes.roots_new] daisukes.roots = #me daisukes.roots
tag @e[tag=daisukes.roots_new] remove daisukes.roots_new
execute positioned ~1 ~ ~1 run particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.15 0.05 0.15 0 10 normal @a[distance=..32]
