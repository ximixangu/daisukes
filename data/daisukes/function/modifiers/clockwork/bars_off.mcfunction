# Totes les barres, de #i a 1
execute store result storage daisukes:clockwork n int 1 run scoreboard players get #i daisukes.cw
function daisukes:modifiers/clockwork/bar/remove with storage daisukes:clockwork
scoreboard players remove #i daisukes.cw 1
execute if score #i daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/bars_off
