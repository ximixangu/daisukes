# Com a jugador, als seus peus. A terra torna a poder volar
execute if predicate daisukes:on_ground run tag @s remove daisukes.icarus_stop
execute if predicate daisukes:on_ground run tag @s remove daisukes.icarus_airborne

# Volant i mira recte o avall: el vol es talla i ja no pot tornar a pujar fins que toqui terra
execute if entity @s[x_rotation=-9..90,tag=daisukes.icarus_airborne,tag=!daisukes.icarus_stop] run function daisukes:modifiers/icarus/cancel_flight

# Mira amunt: levitacio, mes forta com mes amunt mira
execute if entity @s[x_rotation=-29..-10,tag=!daisukes.icarus_stop] run effect give @s minecraft:levitation 1 10 true
execute if entity @s[x_rotation=-79..-30,tag=!daisukes.icarus_stop] run effect give @s minecraft:levitation 1 20 true
execute if entity @s[x_rotation=-90..-80,tag=!daisukes.icarus_stop] run effect give @s minecraft:levitation 1 30 true

# Enlairament
execute if entity @s[x_rotation=-90..-10,tag=!daisukes.icarus_airborne] run playsound minecraft:entity.breeze.charge player @a ~ ~ ~
execute if entity @s[x_rotation=-90..-10,tag=!daisukes.icarus_airborne,tag=!daisukes.icarus_stop] run function daisukes:modifiers/icarus/fx_takeoff
execute if entity @s[x_rotation=-90..-10,tag=!daisukes.icarus_stop] run tag @s add daisukes.icarus_airborne

# Efectes visuals mentre vola
execute if entity @s[tag=daisukes.icarus_airborne] run function daisukes:modifiers/icarus/fx_flight
