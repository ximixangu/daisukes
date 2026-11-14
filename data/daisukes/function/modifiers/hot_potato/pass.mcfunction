# Com a portador que acaba de pegar. A qui? Al mes proper que ha rebut un cop aquest tick (HurtTime 10).
# Nomes coses vives; ni armadures de suport ni bosses.
tag @e[distance=..6,tag=!daisukes.potato_holder,type=!armor_stand,type=!ender_dragon,type=!wither,nbt={HurtTime: 10s},sort=nearest,limit=1] add daisukes.potato_next
execute unless entity @e[tag=daisukes.potato_next] run return 0

tag @s remove daisukes.potato_holder
particle minecraft:firework ~ ~2.2 ~ 0.2 0.2 0.2 0.05 10
execute as @e[type=item_display,tag=daisukes.potato] run data merge entity @s {teleport_duration: 6}
execute as @e[tag=daisukes.potato_next] at @s run function daisukes:modifiers/hot_potato/receive
