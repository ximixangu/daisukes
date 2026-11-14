# CLICK: la caixa invisible et segueix i qualsevol clic hi va
execute if score @s daisukes.rush_a matches 7 run function daisukes:modifiers/arrow_rush/follow
execute if score @s daisukes.rush_a matches 7 if entity @s[tag=daisukes.rush_clicked] if score #p daisukes.rush matches 0 run scoreboard players set #p daisukes.rush 2
execute if score #p daisukes.rush matches 2 run function daisukes:modifiers/arrow_rush/hit with storage daisukes:rush tmp
execute if score #p daisukes.rush matches 1 run function daisukes:modifiers/arrow_rush/wrong with storage daisukes:rush tmp
execute unless score @s daisukes.rush matches 1.. run return 0
execute if score @s daisukes.rush_k matches 4 run function daisukes:modifiers/arrow_rush/hold
execute if score @s daisukes.rush_k matches 3 if score @s daisukes.rush_n matches 2.. run function daisukes:modifiers/arrow_rush/window
execute unless score @s daisukes.rush matches 1.. run return 0
scoreboard players remove @s daisukes.rush 1
execute if score @s daisukes.rush matches ..0 run return run function daisukes:modifiers/arrow_rush/fail with storage daisukes:rush tmp
function daisukes:modifiers/arrow_rush/bar with storage daisukes:rush tmp
