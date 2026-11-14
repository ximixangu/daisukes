# Escala de la pell: #k (x1000 de la seva mida) en #d ticks, amb interpolacio
scoreboard players operation #s daisukes.orb = #k daisukes.orb
scoreboard players operation #s daisukes.orb *= @s daisukes.orb_size
scoreboard players operation #s daisukes.orb /= #1000 daisukes.orb
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #s daisukes.orb
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #s daisukes.orb
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #s daisukes.orb
execute store result entity @s interpolation_duration int 1 run scoreboard players get #d daisukes.orb
data modify entity @s start_interpolation set value 0
