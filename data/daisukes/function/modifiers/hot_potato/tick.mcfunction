# Fase 1: algu porta la patata. Fase 0: treva fins que en surti una de nova.
execute if score #phase daisukes.potato matches 1 run function daisukes:modifiers/hot_potato/held
execute if score #phase daisukes.potato matches 0 if score #time daisukes.potato matches ..0 run function daisukes:modifiers/hot_potato/spawn
execute if score #phase daisukes.potato matches 0 run scoreboard players remove #time daisukes.potato 1

scoreboard players reset @a daisukes.potato_hit
