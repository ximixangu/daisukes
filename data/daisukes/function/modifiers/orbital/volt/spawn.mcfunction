# Volt: l'orba de l'Iso. Closca de vidre lila amb un nucli d'ametista que gira al reves. Si esclata, mata (5 s)
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_volt"], width: 0.9f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:purple_stained_glass"}, item_display: "none", Glowing: true, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new", "daisukes.orb_spin_back"], item: {id: "minecraft:amethyst_block"}, item_display: "none", brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 100
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 11816447
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 600
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new,tag=daisukes.orb_spin_back] daisukes.orb_size 320
function daisukes:modifiers/orbital/setup
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:instant_effect{color: [0.71, 0.3, 1.0]} ~ ~ ~ 0.2 0.2 0.2 0.2 14
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.6 1.5
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 1.3
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
