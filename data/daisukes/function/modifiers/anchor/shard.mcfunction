# Una baula solta, aqui i girada cap on sortira volant (shard_tick l'anima i la treu)
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.anchor", "daisukes.anchor_shard", "daisukes.anchor_new"], block_state: {Name: "minecraft:iron_chain"}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.3f, -0.3f, -0.3f], scale: [0.6f, 0.6f, 0.6f]}}
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_new] run tp @s ~ ~ ~ ~ 0
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 12
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor = #event daisukes.anchor
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
