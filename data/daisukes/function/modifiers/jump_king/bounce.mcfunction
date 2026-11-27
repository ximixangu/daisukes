# Com al jugador que ha picat contra una paret: rebota. La nova velocitat (jk_vx, jk_vy, jk_vz) es la que porta ara
# segons el que diu el client, pero l'empenta li arriba jk_lag ticks despres: s'empeny amb la que portara llavors
scoreboard players operation #sx daisukes.jk = @s daisukes.jk_vx
scoreboard players operation #sy daisukes.jk = @s daisukes.jk_vy
scoreboard players operation #sz daisukes.jk = @s daisukes.jk_vz
scoreboard players operation #i daisukes.jk = @s daisukes.jk_lag
execute if score #i daisukes.jk matches 1.. run function daisukes:modifiers/jump_king/math/ahead
function daisukes:modifiers/jump_king/math/impulse
scoreboard players operation @s daisukes.jk_vx = #sx daisukes.jk
scoreboard players operation @s daisukes.jk_vy = #sy daisukes.jk
scoreboard players operation @s daisukes.jk_vz = #sz daisukes.jk
function daisukes:modifiers/jump_king/fx/bonk
