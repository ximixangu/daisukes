particle minecraft:dust{color: [1.0, 0.78, 0.22], scale: 0.6} ~ ~ ~ 0 0 0 0 1
scoreboard players remove #steps daisukes.king 1
execute if score #steps daisukes.king matches 1.. unless entity @e[type=minecraft:text_display,tag=daisukes.king_now,distance=..1.2] positioned ^ ^ ^1 run function daisukes:modifiers/king/court/tether_step
