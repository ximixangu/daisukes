tag @s remove icarus_stop
execute at @s if entity @s[tag=icarus_airborne] run playsound minecraft:entity.breeze.land player @s
effect clear @s minecraft:levitation
tag @s remove icarus_airborne