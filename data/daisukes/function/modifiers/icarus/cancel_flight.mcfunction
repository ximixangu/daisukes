tag @s add icarus_stop
execute at @s if entity @s[x_rotation=-9..90,tag=icarus_airborne] run playsound minecraft:entity.breeze.land
effect clear @s minecraft:levitation