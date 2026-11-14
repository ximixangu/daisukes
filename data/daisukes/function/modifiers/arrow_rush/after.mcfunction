# Despres de la fallada (1,2 s) s'amaga la barra de dalt
scoreboard players add @s daisukes.rush 1
$execute if score @s daisukes.rush matches 0 run bossbar set daisukes:rush_$(id) visible false
