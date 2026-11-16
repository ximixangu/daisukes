# Un plomall que surt i torna a entrar (dura 1,5 s)
execute if dimension minecraft:the_nether run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_dying", "daisukes.roots_intro"], block_state: {Name: "minecraft:crimson_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.2588f, 0f, 0.9659f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0683f, -0.4f, -0.0183f], scale: [0.1f, 0.1f, 0.1f]}}
execute unless dimension minecraft:the_nether run summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.roots", "daisukes.roots_dying", "daisukes.roots_intro"], block_state: {Name: "minecraft:mangrove_roots"}, teleport_duration: 1, transformation: {left_rotation: [0f, 0.2588f, 0f, 0.9659f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0683f, -0.4f, -0.0183f], scale: [0.1f, 0.1f, 0.1f]}}
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.roots_intro,tag=!daisukes.roots_seen] daisukes.roots_t 30
tag @e[type=minecraft:block_display,tag=daisukes.roots_intro] add daisukes.roots_seen
particle minecraft:block{block_state: "minecraft:rooted_dirt"} ~ ~0.1 ~ 0.2 0.05 0.2 0 8 normal @a[distance=..32]
