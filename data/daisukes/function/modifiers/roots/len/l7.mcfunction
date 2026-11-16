scoreboard players set @s daisukes.roots_l 7
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.0938f, -0.0938f, 0f], scale: [0.1875f, 0.1875f, 1.125f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
