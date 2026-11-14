# Carrega encesa: espurnes fins que esclata
particle minecraft:electric_spark ~ ~0.7 ~ 0.1 0.1 0.1 0.08 4 force @a[distance=..48]
particle minecraft:flame ~ ~0.7 ~ 0.04 0.06 0.04 0.02 1 force @a[distance=..48]
scoreboard players remove @s daisukes.bspot_fx 1
execute if score @s daisukes.bspot_fx matches ..0 run function daisukes:modifiers/blind_spot/explode
