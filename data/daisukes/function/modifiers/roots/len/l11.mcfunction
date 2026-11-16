scoreboard players set @s daisukes.roots_l 11
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0688f, -0.0688f, 0f], scale: [0.1375f, 0.1375f, 1.625f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
