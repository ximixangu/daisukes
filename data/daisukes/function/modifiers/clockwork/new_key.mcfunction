# Com al jugador, als peus: la clau (la de la textura de trial_key, il.luminada perque es vegi de nit)
execute as @e[type=minecraft:item_display,tag=daisukes.cw_mine] run function daisukes:modifiers/clockwork/remove
summon minecraft:item_display ~ ~1.2 ~ {Tags: ["daisukes.cw", "daisukes.cw_key", "daisukes.cw_mine", "daisukes.cw_new"], item: {id: "minecraft:trial_key", count: 1}, teleport_duration: 1, interpolation_duration: 2, brightness: {sky: 15, block: 15}, transformation: {translation: [0f, 0f, -0.325f], left_rotation: [0f, 0f, 0f, 1f], scale: [0.65f, 0.65f, 0.65f], right_rotation: [-0.707107f, 0f, 0f, 0.707107f]}}
scoreboard players operation @e[type=minecraft:item_display,tag=daisukes.cw_new] daisukes.cw = #me daisukes.cw
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.cw_new] daisukes.cw_k 0
scoreboard players operation #lk daisukes.cw = @s daisukes.cw_v
execute as @e[type=minecraft:item_display,tag=daisukes.cw_new] run function daisukes:modifiers/clockwork/key_item
tag @e[type=minecraft:item_display,tag=daisukes.cw_new] remove daisukes.cw_new
