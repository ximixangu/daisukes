execute if predicate daisukes:icarus/on_ground run tag @s remove icarus_stop
execute if predicate daisukes:icarus/on_ground run tag @s remove icarus_airborne

execute if entity @s[x_rotation=-9..90,tag=icarus_airborne,tag=!icarus_stop] run function daisukes:modifiers/icarus/cancel_flight

execute if entity @s[x_rotation=-29..-10,tag=!icarus_stop] run effect give @s minecraft:levitation 1 10 true
execute if entity @s[x_rotation=-79..-30,tag=!icarus_stop] run effect give @s minecraft:levitation 1 20 true
execute if entity @s[x_rotation=-90..-80,tag=!icarus_stop] run effect give @s minecraft:levitation 1 30 true

execute at @s if entity @s[x_rotation=-90..-10,tag=!icarus_airborne] run playsound entity.breeze.charge
execute if entity @s[x_rotation=-90..-10,tag=!icarus_stop] run tag @s add icarus_airborne