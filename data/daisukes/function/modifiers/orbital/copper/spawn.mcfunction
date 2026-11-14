# Coure: aguanta tres cops i s'oxida mentre li queda temps (6 s). Si esclata, descarrega electrica
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_copper", "daisukes.orb_slow"], width: 0.9f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:copper_block"}, item_display: "none", Glowing: true, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 120
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 15763024
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 600
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_hp 4
function daisukes:modifiers/orbital/setup
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:instant_effect{color: [0.94, 0.54, 0.31]} ~ ~ ~ 0.2 0.2 0.2 0.2 14
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:wax_on ~ ~ ~ 0.3 0.3 0.3 0.3 10
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.copper_bulb.turn_on master @a ~ ~ ~ 1 1
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:block.note_block.trumpet master @a ~ ~ ~ 0.7 1
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
