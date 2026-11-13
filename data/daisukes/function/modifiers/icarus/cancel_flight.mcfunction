tag @s add icarus_stop
execute at @s if entity @s[x_rotation=-9..90,tag=icarus_airborne] run playsound minecraft:entity.breeze.land
execute at @s if entity @s[tag=icarus_airborne] run function daisukes:modifiers/icarus/fx_stall
effect clear @s minecraft:levitation