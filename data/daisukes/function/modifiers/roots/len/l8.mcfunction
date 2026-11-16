scoreboard players set @s daisukes.roots_l 8
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0875f, -0.0875f, 0f], scale: [0.175f, 0.175f, 1.25f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
