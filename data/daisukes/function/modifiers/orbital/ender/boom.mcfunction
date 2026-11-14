# T'arrossega: teletransport a l'atzar (de 6 a 14 blocs, a terra ferm) i un instant a les fosques
particle minecraft:reverse_portal ~ ~ ~ 0.3 0.3 0.3 0.3 40
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] at @s run function daisukes:util/teleport/random {near: 6, far: 14}
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.2
execute as @e[type=minecraft:player,tag=daisukes.orb_me,limit=1] run effect give @s minecraft:blindness 2 0 true
