# Llavor que cau, un bloc per tick, amb estela de foc i fum. Quan arriba a terra, s'hi enterra
execute if score @s daisukes.bspot matches ..0 run return run function daisukes:modifiers/blind_spot/land
scoreboard players remove @s daisukes.bspot 1
tp @s ~ ~-1 ~
particle minecraft:flame ~ ~0.6 ~ 0.06 0.25 0.06 0.01 3 force @a[distance=..64]
particle minecraft:smoke ~ ~0.9 ~ 0.05 0.2 0.05 0.01 2 force @a[distance=..64]
