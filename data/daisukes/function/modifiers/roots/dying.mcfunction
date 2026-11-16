# Com a una arrel que s'enfonsa o una corda que es retira: quan s'acaba el temps, fora
scoreboard players remove @s daisukes.roots_t 1
execute if entity @s[tag=daisukes.roots_intro] if score @s daisukes.roots_t matches 29 run data merge entity @s {start_interpolation: 0, interpolation_duration: 8, transformation: {left_rotation: [0f, 0.2588f, 0f, 0.9659f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.2869f, -0.17f, -0.0769f], scale: [0.42f, 0.42f, 0.42f]}}
execute if entity @s[tag=daisukes.roots_intro] if score @s daisukes.roots_t matches 10 run data merge entity @s {start_interpolation: 0, interpolation_duration: 9, transformation: {left_rotation: [0f, 0.2588f, 0f, 0.9659f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.0683f, -0.4f, -0.0183f], scale: [0.1f, 0.1f, 0.1f]}}
# Arrels que han esquivat (el jugador ja es movia): surten de cop i, al cap de poc, tornen a entrar
execute if entity @s[tag=daisukes.roots_snap] if score @s daisukes.roots_t matches 13 run function daisukes:modifiers/roots/burst
execute if entity @s[tag=daisukes.roots_snap] if score @s daisukes.roots_t matches 7 run function daisukes:modifiers/roots/snap_sink
execute if score @s daisukes.roots_t matches ..0 run function daisukes:modifiers/roots/remove
