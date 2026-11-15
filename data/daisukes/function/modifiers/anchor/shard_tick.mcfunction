# Com a una baula solta: el tick seguent surt volant donant voltes i s'encongeix; als 12 ticks, fora
scoreboard players remove @s daisukes.anchor_t 1
execute if score @s daisukes.anchor_t matches 11 run data merge entity @s {start_interpolation: 0, interpolation_duration: 10, transformation: {translation: [-0.3f, 0.4f, 1.3f], left_rotation: [0.997495f, 0f, 0f, 0.0707372f], scale: [0f, 0f, 0f]}}
execute if score @s daisukes.anchor_t matches ..0 run function daisukes:modifiers/anchor/remove
