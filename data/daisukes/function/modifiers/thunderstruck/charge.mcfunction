# Com a cada jugador. Mateix sistema que item_drop i cursed_potato: cada tick suma un valor
# aleatori (1..5, de mitjana 3) i, quan arriba al límit, toca llamp.
# 500 / 3 = uns 166 ticks (~8 s) de mitjana, i mai menys de 100 ticks (5 s).
execute store result score @s daisukes.thunder_add run random value 1..10
scoreboard players operation @s daisukes.thunder += @s daisukes.thunder_add

execute if score @s daisukes.thunder matches 500.. at @s run function daisukes:modifiers/thunderstruck/mark
