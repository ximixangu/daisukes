# Doble: si la segona no arriba a temps, la parella torna a comencar
scoreboard players remove @s daisukes.rush_n 1
execute if score @s daisukes.rush_n matches 2.. run return 0
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.6 0.6
function daisukes:modifiers/arrow_rush/reset with storage daisukes:rush tmp
