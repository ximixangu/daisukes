# Les figures d'aquest jugador el segueixen (només qui en té)
execute unless score @s daisukes.shift_uid = @s daisukes.shift_uid run return 0
scoreboard players operation #me daisukes.shift_uid = @s daisukes.shift_uid
execute as @e[type=item_display,tag=daisukes.shift_fx] if score @s daisukes.shift_uid = #me daisukes.shift_uid run function daisukes:modifiers/hotbar_shift/intro/move
