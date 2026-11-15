# Com a una anella, amb el gir de l'ancora: s'eixampla i puja una mica en 4 ticks i desapareix (pop_tick)
tag @s add daisukes.anchor_pop
scoreboard players set @s daisukes.anchor_t 5
# Quina baula es (1a, 2a...): la nota puja
scoreboard players operation #k daisukes.anchor = #all daisukes.anchor
scoreboard players operation #k daisukes.anchor -= @s daisukes.anchor_i
scoreboard players add #k daisukes.anchor 1
execute if score @s daisukes.anchor_i matches 1 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 0.625f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 1 positioned ^ ^0.47 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 2 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 0.75f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 2 positioned ^ ^0.59 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 3 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 0.875f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 3 positioned ^ ^0.72 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 4 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 4 positioned ^ ^0.84 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 5 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.125f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 5 positioned ^ ^0.97 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 6 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.25f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 6 positioned ^ ^1.09 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 7 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.375f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 7 positioned ^ ^1.22 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 8 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.5f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 8 positioned ^ ^1.34 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 9 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.625f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 9 positioned ^ ^1.47 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 10 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.3125f, 1.75f, -0.3125f], scale: [0.625f, 0.0625f, 0.625f]}}
execute if score @s daisukes.anchor_i matches 10 positioned ^ ^1.59 ^ run function daisukes:modifiers/anchor/pop_fx
