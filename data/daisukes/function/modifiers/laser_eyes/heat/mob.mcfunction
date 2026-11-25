# Com al mob o jugador que el raig toca, al punt del raig. Si es el mateix d'abans, s'escalfa; si no, comenca de zero
execute unless score @s daisukes.le_id matches 1.. store result score @s daisukes.le_id run scoreboard players add #ids daisukes.le 1
execute unless score @s daisukes.le_id = #tgt daisukes.le run scoreboard players set #heat daisukes.le 0
scoreboard players operation #tgt daisukes.le = @s daisukes.le_id
scoreboard players add #heat daisukes.le 1
function daisukes:modifiers/laser_eyes/heat/fx
execute if score #heat daisukes.le >= #ignite daisukes.le at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/laser_eyes/fire/mob
