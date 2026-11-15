# Com a una anella, amb el gir de l'ancora: s'eixampla i puja una mica en 4 ticks i desapareix (pop_tick)
tag @s add daisukes.anchor_pop
scoreboard players set @s daisukes.anchor_t 5
# Quina baula es (1a, 2a...): la nota puja
scoreboard players operation #k daisukes.anchor = #all daisukes.anchor
scoreboard players operation #k daisukes.anchor -= @s daisukes.anchor_i
scoreboard players add #k daisukes.anchor 1
execute if score @s daisukes.anchor_i matches 1 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.03f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 1 positioned ^ ^0.83 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 2 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.24f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 2 positioned ^ ^1.04 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 3 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.45f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 3 positioned ^ ^1.25 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 4 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.66f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 4 positioned ^ ^1.46 ^ run function daisukes:modifiers/anchor/pop_fx
execute if score @s daisukes.anchor_i matches 5 run data merge entity @s {start_interpolation: 0, interpolation_duration: 4, transformation: {translation: [-0.31f, 1.87f, -0.31f], scale: [0.62f, 0.1f, 0.62f]}}
execute if score @s daisukes.anchor_i matches 5 positioned ^ ^1.67 ^ run function daisukes:modifiers/anchor/pop_fx
