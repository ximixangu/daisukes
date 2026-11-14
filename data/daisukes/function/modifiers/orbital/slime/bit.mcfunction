summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_slimelet", "daisukes.orb_fast"], width: 0.55f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:slime_block"}, item_display: "none", Glowing: true, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 50
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 8191823
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 300
execute unless entity @s[tag=daisukes.orb_left] run tag @e[type=minecraft:interaction,tag=daisukes.orb_new] add daisukes.orb_left
function daisukes:modifiers/orbital/setup
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
