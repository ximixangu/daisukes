# Com a cada jugador. Mateix sistema que bone_voyage, item_drop i cursed_potato: cada tick suma un valor
# aleatori (aqui 1..10, de mitjana 5,5) i, quan arriba al límit, toca llamp.
# 500 / 5,5 = uns 90 ticks (~4,5 s) de mitjana, i mai menys de 50 ticks (2,5 s).
execute store result score @s daisukes.thunder_add run random value 1..10
scoreboard players operation @s daisukes.thunder += @s daisukes.thunder_add

execute if score @s daisukes.thunder matches 500.. at @s run function daisukes:modifiers/thunderstruck/mark
