# Com a un plomall: torna a entrar al terra
tag @s add daisukes.roots_dying
scoreboard players set @s daisukes.roots_t 10
data merge entity @s {start_interpolation: 0, interpolation_duration: 9, transformation: {translation: [-0.05f, -0.45f, -0.05f], scale: [0.1f, 0.1f, 0.1f]}}
