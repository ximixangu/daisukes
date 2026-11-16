# S = casella triada; T = la que es fa servir de veritat (#n caselles a la dreta, donant la volta).
# Si a la mà encara té el que li vam posar a S, no ha canviat de casella (així no cal llegir les dades del jugador, que és car)
scoreboard players set #sel daisukes.shift -1
execute if score @s daisukes.shift = @s daisukes.shift store result storage daisukes:shift args.s int 1 run scoreboard players get @s daisukes.shift
execute if score @s daisukes.shift = @s daisukes.shift store result score #sel daisukes.shift run function daisukes:modifiers/hotbar_shift/same with storage daisukes:shift args
execute if score #sel daisukes.shift matches -1 store result score #sel daisukes.shift run data get entity @s SelectedItemSlot
# Mateixa casella i l'inventari no ha canviat: tot està bé, no cal fer res
execute if score #sel daisukes.shift = @s daisukes.shift unless score @s daisukes.shift_dirty matches 1 run return 0

execute store result storage daisukes:shift args.u int 1 run scoreboard players get @s daisukes.shift_uid
scoreboard players operation #tgt daisukes.shift = #sel daisukes.shift
scoreboard players operation #tgt daisukes.shift += #n daisukes.shift
scoreboard players operation #tgt daisukes.shift %= #9 daisukes.shift
execute store result storage daisukes:shift args.s int 1 run scoreboard players get #sel daisukes.shift
execute store result storage daisukes:shift args.t int 1 run scoreboard players get #tgt daisukes.shift
# Mateixa casella i tot al seu lloc: només cal posar al dia la còpia falsa
execute if score #sel daisukes.shift = @s daisukes.shift store result score #ok daisukes.shift run function daisukes:modifiers/hotbar_shift/intact with storage daisukes:shift args
execute if score #sel daisukes.shift = @s daisukes.shift if score #ok daisukes.shift matches 1 run return run function daisukes:modifiers/hotbar_shift/refresh with storage daisukes:shift args

# Si no: desfà la il·lusió anterior i la torna a fer amb la casella d'ara
function daisukes:modifiers/hotbar_shift/buffer
function daisukes:modifiers/hotbar_shift/undo with storage daisukes:shift args
function daisukes:modifiers/hotbar_shift/apply with storage daisukes:shift args
kill @e[type=item_display,tag=daisukes.shift_buf]
scoreboard players operation @s daisukes.shift = #sel daisukes.shift
scoreboard players reset @s daisukes.shift_dirty
