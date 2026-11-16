scoreboard players set @s daisukes.roots_l 10
data merge entity @s {start_interpolation: 0, interpolation_duration: 2, transformation: {translation: [-0.075f, -0.075f, 0f], scale: [0.15f, 0.15f, 1.5f]}}
execute if entity @s[tag=daisukes.roots_taut] run function daisukes:modifiers/roots/slack
