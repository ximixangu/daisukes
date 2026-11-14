# Com a la corona nova, 7 blocs per sobre de l'hereu (#cid: la seva cort). Daurada, sempre de cara a la
# camera, es veu a traves de les parets (aixi es troba el Rei a les coves) i es mou suau. Baixa volant (crown/fly)
data merge entity @s {Tags: ["daisukes.king_crown", "daisukes.king_fly"], text: {text: "♚", color: "#FFC83D", bold: true}, billboard: "center", see_through: true, shadow: true, background: 0, brightness: {sky: 15, block: 15}, view_range: 1.5f, teleport_duration: 2, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0.25f, 0f], scale: [2.2f, 2.2f, 2.2f]}}
scoreboard players operation @s daisukes.king_id = #cid daisukes.king_id
scoreboard players set @s daisukes.king 0
scoreboard players set @s daisukes.king_t 0
scoreboard players set @s daisukes.king_fx 0
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
function daisukes:modifiers/king/bar/new with storage daisukes:king arg
playsound minecraft:entity.allay.item_thrown master @a[distance=..32] ~ ~ ~ 1 0.6
