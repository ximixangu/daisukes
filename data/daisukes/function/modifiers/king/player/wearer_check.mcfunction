# Com a jugador amb la marca de portar corona, cada segon. Si ja no en porta cap ni n'hi vola cap, fora la marca
execute unless score @s daisukes.king_id matches 1.. run return run function daisukes:modifiers/king/player/unwear
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute as @e[type=minecraft:text_display,tag=daisukes.king_worn] if score @s daisukes.king_id = #cid daisukes.king_id run return 0
execute as @e[type=minecraft:text_display,tag=daisukes.king_to_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run return 0
function daisukes:modifiers/king/player/unwear
