# Com a l'ull de l'ancora, mirant els peus de l'encadenat: la guspira baixa 2 baules per tick
execute if score #pulse daisukes.anchor matches 0..0 run particle minecraft:electric_spark ^ ^ ^0.40 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 0..1 run particle minecraft:electric_spark ^ ^ ^1.20 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 1..2 run particle minecraft:electric_spark ^ ^ ^2.00 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 2..3 run particle minecraft:electric_spark ^ ^ ^2.80 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 3..4 run particle minecraft:electric_spark ^ ^ ^3.60 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 4..5 run particle minecraft:electric_spark ^ ^ ^4.40 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 5..6 run particle minecraft:electric_spark ^ ^ ^5.20 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 6..7 run particle minecraft:electric_spark ^ ^ ^6.00 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 7..8 run particle minecraft:electric_spark ^ ^ ^6.80 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 8..9 run particle minecraft:electric_spark ^ ^ ^7.60 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 9..10 run particle minecraft:electric_spark ^ ^ ^8.40 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
execute if score #pulse daisukes.anchor matches 10..11 run particle minecraft:electric_spark ^ ^ ^9.20 0.04 0.04 0.04 0.02 2 force @a[distance=..48]
scoreboard players add #pulse daisukes.anchor 2
execute if score #pulse daisukes.anchor >= #shown daisukes.anchor run function daisukes:modifiers/anchor/burst
