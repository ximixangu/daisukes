execute store result score @s daisukes.shift_uid run data get entity @s UUID[0]
# Avís quan canvia l'inventari, i rescat si tanca el joc amb la il·lusió posada
advancement revoke @s only daisukes:hotbar_shift/changed
advancement revoke @s only daisukes:hotbar_shift/rescue
# Restes d'una partida anterior (món tancat o desconnexió durant la il·lusió): fora
function daisukes:modifiers/hotbar_shift/recover
execute as @e[type=item_display,tag=daisukes.shift_fx,distance=..32] unless score @s daisukes.shift_uid = @s daisukes.shift_uid run kill @s
