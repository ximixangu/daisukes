# Com a jugador que ha trepitjat on cauria de massa amunt: torna mig bloc enrere (no el deixa avancar)
execute store result storage daisukes:ender_step back.x double -0.5 run scoreboard players get #dx daisukes.ender_step
execute store result storage daisukes:ender_step back.z double -0.5 run scoreboard players get #dz daisukes.ender_step
function daisukes:modifiers/ender_step/push with storage daisukes:ender_step back
scoreboard players operation @s daisukes.ender_step_x -= #dx daisukes.ender_step
scoreboard players operation @s daisukes.ender_step_z -= #dz daisukes.ender_step
execute unless score @s daisukes.ender_step matches 1.. run function daisukes:modifiers/ender_step/bump
