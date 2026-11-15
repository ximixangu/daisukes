# Com a una anella, amb el gir de l'ancora: s'eixampla i puja una mica en 4 ticks i desapareix (pop_tick)
tag @s add daisukes.anchor_pop
scoreboard players set @s daisukes.anchor_t 5
# Quina baula es (1a, 2a...): la nota puja
scoreboard players operation #k daisukes.anchor = #all daisukes.anchor
scoreboard players operation #k daisukes.anchor -= @s daisukes.anchor_i
scoreboard players add #k daisukes.anchor 1
execute if score @s daisukes.anchor_i matches 1 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 0.67f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 1 positioned ^ ^0.47 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 2 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 0.815f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 2 positioned ^ ^0.61 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 3 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 0.96f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 3 positioned ^ ^0.76 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 4 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.105f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 4 positioned ^ ^0.90 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 5 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.25f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 5 positioned ^ ^1.05 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 6 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.395f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 6 positioned ^ ^1.19 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 7 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.54f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 7 positioned ^ ^1.34 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 8 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.685f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 8 positioned ^ ^1.48 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 9 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.83f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 9 positioned ^ ^1.63 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 10 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.975f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 10 positioned ^ ^1.77 ^ run function daisukes:modifiers/anchor/pop_fx
