scoreboard players set #rz daisukes.oc 0
function daisukes:modifiers/overcharge/pulse/rod_cell
scoreboard players add #rx daisukes.oc 1
execute if score #rod daisukes.oc matches 0 if score #rx daisukes.oc matches ..6 positioned ~1 ~ ~ run function daisukes:modifiers/overcharge/pulse/rod_row
