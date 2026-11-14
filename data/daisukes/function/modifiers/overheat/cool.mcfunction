# Com a jugador calent que toca aigua, als seus peus. La barra baixa i en surt un fil de vapor
scoreboard players operation @s daisukes.heat -= #cool daisukes.heat
particle minecraft:white_smoke ~ ~1.1 ~ 0.2 0.25 0.2 0.01 1
execute if score @s daisukes.heat matches ..0 run function daisukes:modifiers/overheat/cooled
