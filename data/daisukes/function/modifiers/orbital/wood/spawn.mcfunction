# Fusta: rapida (3 s) pero fluixa. Si esclata, estelles
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_wood"], width: 0.85f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:oak_log"}, item_display: "none", Glowing: true, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 45
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 14918490
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 350
function daisukes:modifiers/orbital/setup
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:instant_effect{color: [0.89, 0.64, 0.35]} ~ ~ ~ 0.2 0.2 0.2 0.2 14
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:block{block_state: "minecraft:oak_log"} ~ ~ ~ 0.2 0.2 0.2 0 8
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 1.6
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.wood.place master @a ~ ~ ~ 0.7 1.2
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
