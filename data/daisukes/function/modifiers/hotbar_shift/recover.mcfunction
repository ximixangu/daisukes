# Torna l'inventari a la normalitat ara mateix (pantalles, creatiu, final del modificador, rescat...)
execute store result storage daisukes:shift args.u int 1 run data get entity @s UUID[0]
execute at @s run function daisukes:modifiers/hotbar_shift/buffer
execute at @s run function daisukes:modifiers/hotbar_shift/undo with storage daisukes:shift args
kill @e[type=item_display,tag=daisukes.shift_buf]
# La propera vegada caldrà refer la il·lusió
scoreboard players reset @s daisukes.shift
