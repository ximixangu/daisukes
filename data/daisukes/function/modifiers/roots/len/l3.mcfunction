scoreboard players set @s daisukes.roots_l 3
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.1f, -0.1f, 0f], scale: [0.2f, 0.2f, 0.625f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
