# Com a una corda: mira cap als peus del seu lligat i es fa llarga com la distancia (nivells de 0,125 blocs)
execute facing entity @a[tag=daisukes.roots_me,limit=1] feet run tp @s ~ ~ ~ ~ ~
scoreboard players set #k daisukes.roots 17
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..2.250] run scoreboard players set #k daisukes.roots 16
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..2.125] run scoreboard players set #k daisukes.roots 15
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..2.000] run scoreboard players set #k daisukes.roots 14
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.875] run scoreboard players set #k daisukes.roots 13
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.750] run scoreboard players set #k daisukes.roots 12
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.625] run scoreboard players set #k daisukes.roots 11
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.500] run scoreboard players set #k daisukes.roots 10
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.375] run scoreboard players set #k daisukes.roots 9
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.250] run scoreboard players set #k daisukes.roots 8
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.125] run scoreboard players set #k daisukes.roots 7
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..1.000] run scoreboard players set #k daisukes.roots 6
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.875] run scoreboard players set #k daisukes.roots 5
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.750] run scoreboard players set #k daisukes.roots 4
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.625] run scoreboard players set #k daisukes.roots 3
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.500] run scoreboard players set #k daisukes.roots 2
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.375] run scoreboard players set #k daisukes.roots 1
execute if entity @a[tag=daisukes.roots_me,limit=1,distance=..0.250] run scoreboard players set #k daisukes.roots 0
execute unless score @s daisukes.roots_l = #k daisukes.roots run function daisukes:modifiers/roots/len
scoreboard players operation #kmax daisukes.roots > @s daisukes.roots_l
