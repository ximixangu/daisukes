tp @s ~ ~ ~
execute if score #time daisukes.shift > #roll daisukes.shift run return 0
# Posició: x = ((i-4)*100 -/+ desplaçament + 450) mod 900 - 450, en centèsimes de casella (0 = al mig)
scoreboard players operation #x daisukes.shift = @s daisukes.shift
scoreboard players remove #x daisukes.shift 4
scoreboard players operation #x daisukes.shift *= #100 daisukes.shift
execute if score #d daisukes.shift matches 1 run scoreboard players operation #x daisukes.shift -= #off daisukes.shift
execute if score #d daisukes.shift matches 2 run scoreboard players operation #x daisukes.shift += #off daisukes.shift
scoreboard players add #x daisukes.shift 450
scoreboard players operation #x daisukes.shift %= #900 daisukes.shift
scoreboard players remove #x daisukes.shift 450
# Mida: plena al mig i petita a les puntes (així el salt d'una punta a l'altra no es veu)
scoreboard players operation #z daisukes.shift = #x daisukes.shift
execute if score #z daisukes.shift matches ..-1 run scoreboard players operation #z daisukes.shift *= #-1 daisukes.shift
scoreboard players set #sz daisukes.shift 450
scoreboard players operation #sz daisukes.shift -= #z daisukes.shift
scoreboard players operation #sz daisukes.shift *= #4 daisukes.shift
execute if score #sz daisukes.shift matches 201.. run scoreboard players set #sz daisukes.shift 200
execute store result entity @s transformation.translation[0] float 0.0024 run scoreboard players get #x daisukes.shift
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #sz daisukes.shift
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #sz daisukes.shift
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #sz daisukes.shift
data modify entity @s start_interpolation set value 0
