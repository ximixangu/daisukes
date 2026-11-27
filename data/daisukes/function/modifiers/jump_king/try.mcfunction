# Com al jugador amb el salt premut que no carrega: comenca si pot (a terra, sense muntura, fora de l'aigua i d'escales
# o bastides, on l'espai fa pujar com sempre). En ple salt o estampat, no
execute if score @s daisukes.jk_t matches 1.. run return 0
execute if score @s daisukes.jk_st matches 1.. run return 0
execute unless predicate daisukes:jump_king/can_charge run return 0
# Si una altra cosa l'ha deixat quiet (Clockwork, Gorgun's Gaze...) o sense salt (Grasping Roots...), tampoc
execute store result score #spd daisukes.jk run attribute @s minecraft:movement_speed get 100000
execute if score #spd daisukes.jk matches ..0 run return 0
function daisukes:modifiers/jump_king/jump_ok
execute if score #j daisukes.jk matches ..0 run return 0

scoreboard players set @s daisukes.jk_c 1
# Peus clavats a terra mentre carrega
attribute @s minecraft:movement_speed modifier remove daisukes:jump_king
attribute @s minecraft:movement_speed modifier add daisukes:jump_king -1 add_multiplied_total
function daisukes:modifiers/jump_king/fx/charge
