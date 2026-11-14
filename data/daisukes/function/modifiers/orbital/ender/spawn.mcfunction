# Ender: un ull que salta a un altre lloc cada segon. Si esclata, t'arrossega lluny (4 s)
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_ender"], width: 0.85f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:ender_eye"}, item_display: "none", Glowing: true, billboard: "center", brightness: {sky: 15, block: 15}, teleport_duration: 0, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 80
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 3076290
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 750
function daisukes:modifiers/orbital/setup
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:instant_effect{color: [0.18, 0.94, 0.76]} ~ ~ ~ 0.2 0.2 0.2 0.2 14
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.05 20
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.6 1.5
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 0.7 1.3
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
