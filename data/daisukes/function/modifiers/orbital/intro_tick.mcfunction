# Entrada (2 s): apareixen (rup!), surten en estrella, giren, s'inflen i es trenquen alhora
execute if score #time daisukes.orb matches 2 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] run function daisukes:modifiers/orbital/size {k: 1300, d: 3}
execute if score #time daisukes.orb matches 5 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] run function daisukes:modifiers/orbital/size {k: 1000, d: 3}
execute if score #time daisukes.orb matches 3..13 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] at @s run tp @s ^ ^ ^0.16
execute if score #time daisukes.orb matches 14..39 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] at @s run tp @s ~ ~ ~ ~12 ~
execute if score #time daisukes.orb matches 34 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] run function daisukes:modifiers/orbital/size {k: 1900, d: 5}
execute if score #time daisukes.orb matches 40 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.15 10
execute if score #time daisukes.orb matches 40 as @e[type=minecraft:item_display,tag=daisukes.orb_intro] at @s run function daisukes:modifiers/orbital/shatter
execute if score #time daisukes.orb matches 40 as @a at @s run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 1.2
execute if score #time daisukes.orb matches 40 as @a at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 1.2
execute if score #time daisukes.orb matches 40 as @a at @s run playsound minecraft:block.copper.break master @s ~ ~ ~ 1 1
execute if score #time daisukes.orb matches 40 as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 0.8 1.2
