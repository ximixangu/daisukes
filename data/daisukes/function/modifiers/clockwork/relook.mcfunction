# Com al jugador que canvia d'aspecte (#lk): la clau (brilla si es plena, fosca si en queda poca) i la barra
scoreboard players operation @s daisukes.cw_v = #lk daisukes.cw
scoreboard players operation #tg daisukes.cw = @s daisukes.cw
execute as @e[type=minecraft:item_display,tag=daisukes.cw_key] if score @s daisukes.cw = #tg daisukes.cw run function daisukes:modifiers/clockwork/key_item
execute store result storage daisukes:clockwork n int 1 run scoreboard players get @s daisukes.cw
function daisukes:modifiers/clockwork/bar/look with storage daisukes:clockwork
