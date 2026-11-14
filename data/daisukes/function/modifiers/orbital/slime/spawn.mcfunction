# Slime: si el piques es parteix en tres de petits que s'han de picar tots. Si n'esclata algun, enganxa (4 s)
summon minecraft:interaction ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_new", "daisukes.orb_slime"], width: 0.9f, height: 0.8f, response: true}
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.orb", "daisukes.orb_body", "daisukes.orb_skin", "daisukes.orb_new"], item: {id: "minecraft:slime_block"}, item_display: "none", Glowing: true, brightness: {sky: 15, block: 15}, teleport_duration: 1, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [-0.32505f, 0f, 0.32505f, 0.88807f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_life 200
scoreboard players set @e[type=minecraft:interaction,tag=daisukes.orb_new] daisukes.orb_color 8191823
scoreboard players set @e[type=minecraft:item_display,tag=daisukes.orb_new] daisukes.orb_size 560
function daisukes:modifiers/orbital/setup
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:instant_effect{color: [0.49, 1.0, 0.31]} ~ ~ ~ 0.2 0.2 0.2 0.2 14
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run particle minecraft:item_slime ~ ~ ~ 0.2 0.2 0.2 0 12
execute at @e[type=minecraft:interaction,tag=daisukes.orb_new] positioned ~ ~0.4 ~ run playsound minecraft:entity.slime.jump master @a ~ ~ ~ 1 1.3
tag @e[tag=daisukes.orb_new] remove daisukes.orb_new
