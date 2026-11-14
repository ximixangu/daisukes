# Mort, sortida del servidor o espectador: fora la sequencia, sense mal, i la barra amagada
scoreboard players reset @s daisukes.rush_d
scoreboard players reset @s daisukes.rush_l
execute unless score @s daisukes.rush matches 0 run title @s clear
scoreboard players set @s daisukes.rush 0
scoreboard players set @s daisukes.rush_a 0
scoreboard players set @s daisukes.rush_k 0
execute store result storage daisukes:rush tmp.id int 1 run scoreboard players get @s daisukes.rush_id
execute if score @s daisukes.rush_id matches 1.. run function daisukes:modifiers/arrow_rush/hide with storage daisukes:rush tmp
