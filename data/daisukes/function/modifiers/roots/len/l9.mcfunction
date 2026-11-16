scoreboard players set @s daisukes.roots_l 9
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0813f, -0.0813f, 0f], scale: [0.1625f, 0.1625f, 1.375f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
