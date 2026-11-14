# Mantenir: la cua creix mentre tens premuda la tecla; si la deixes anar, torna a zero
execute if score #h daisukes.rush matches 0 if score @s daisukes.rush_n matches 1.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute if score #h daisukes.rush matches 0 if score @s daisukes.rush_n matches 1.. run return run function daisukes:modifiers/arrow_rush/reset with storage daisukes:rush tmp
execute if score #h daisukes.rush matches 0 run return 0
scoreboard players add @s daisukes.rush_n 1
execute if score @s daisukes.rush_n matches 1 run playsound minecraft:item.crossbow.loading_start master @s ~ ~ ~ 0.7 1.2
execute if score @s daisukes.rush_n matches 16.. run function daisukes:modifiers/arrow_rush/note with storage daisukes:rush tmp
execute if score @s daisukes.rush_n matches 16.. run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 0.8 1.2
execute if score @s daisukes.rush_n matches 16.. run particle minecraft:flame ~ ~0.2 ~ 0.4 0.05 0.4 0.03 10
execute if score @s daisukes.rush_n matches 16.. run return run function daisukes:modifiers/arrow_rush/done with storage daisukes:rush tmp
# Cada 4 ticks, un tros mes de cua
scoreboard players operation #x daisukes.rush = @s daisukes.rush_n
scoreboard players operation #x daisukes.rush %= #4 daisukes.rush
execute unless score #x daisukes.rush matches 0 run return 0
playsound minecraft:item.crossbow.loading_middle master @s ~ ~ ~ 0.6 1.4
particle minecraft:small_flame ~ ~0.2 ~ 0.3 0.05 0.3 0.01 3
scoreboard players operation #x daisukes.rush = @s daisukes.rush_n
scoreboard players operation #x daisukes.rush /= #4 daisukes.rush
execute store result storage daisukes:rush tmp.d int 1 run scoreboard players get #x daisukes.rush
function daisukes:modifiers/arrow_rush/state with storage daisukes:rush tmp
