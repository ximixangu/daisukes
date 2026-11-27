# Com al jugador en ple salt: si anava de pressa en un eix (fa 2 ticks o menys) i s'hi ha aturat de cop quan encara hi
# havia d'anar, ha picat contra una paret i rebota. jk_cx i jk_cz: 2 en anar de pressa cap a +x (+z), -2 cap a -x (-z).
# El primer tick enlaire (#first) no cal que hi anes de pressa abans: saltaves de cara a la paret
execute if score #first daisukes.jk matches 1 if predicate daisukes:jump_king/stop_x if score #ox daisukes.jk matches 500.. run scoreboard players set @s daisukes.jk_cx 1
execute if score #first daisukes.jk matches 1 if predicate daisukes:jump_king/stop_x if score #ox daisukes.jk matches ..-500 run scoreboard players set @s daisukes.jk_cx -1
execute if score #first daisukes.jk matches 1 if predicate daisukes:jump_king/stop_z if score #oz daisukes.jk matches 500.. run scoreboard players set @s daisukes.jk_cz 1
execute if score #first daisukes.jk matches 1 if predicate daisukes:jump_king/stop_z if score #oz daisukes.jk matches ..-500 run scoreboard players set @s daisukes.jk_cz -1
scoreboard players set #bx daisukes.jk 0
scoreboard players set #bz daisukes.jk 0
execute if predicate daisukes:jump_king/stop_x if score @s daisukes.jk_cx matches 1.. if score #ox daisukes.jk matches 500.. run scoreboard players set #bx daisukes.jk 1
execute if predicate daisukes:jump_king/stop_x if score @s daisukes.jk_cx matches ..-1 if score #ox daisukes.jk matches ..-500 run scoreboard players set #bx daisukes.jk 1
execute if predicate daisukes:jump_king/stop_z if score @s daisukes.jk_cz matches 1.. if score #oz daisukes.jk matches 500.. run scoreboard players set #bz daisukes.jk 1
execute if predicate daisukes:jump_king/stop_z if score @s daisukes.jk_cz matches ..-1 if score #oz daisukes.jk matches ..-500 run scoreboard players set #bz daisukes.jk 1
execute if predicate daisukes:jump_king/stop_x run scoreboard players set @s daisukes.jk_cx 0
execute if score @s daisukes.jk_cx matches 1.. run scoreboard players remove @s daisukes.jk_cx 1
execute if score @s daisukes.jk_cx matches ..-1 run scoreboard players add @s daisukes.jk_cx 1
execute if predicate daisukes:jump_king/move_px run scoreboard players set @s daisukes.jk_cx 2
execute if predicate daisukes:jump_king/move_nx run scoreboard players set @s daisukes.jk_cx -2
execute if predicate daisukes:jump_king/stop_z run scoreboard players set @s daisukes.jk_cz 0
execute if score @s daisukes.jk_cz matches 1.. run scoreboard players remove @s daisukes.jk_cz 1
execute if score @s daisukes.jk_cz matches ..-1 run scoreboard players add @s daisukes.jk_cz 1
execute if predicate daisukes:jump_king/move_pz run scoreboard players set @s daisukes.jk_cz 2
execute if predicate daisukes:jump_king/move_nz run scoreboard players set @s daisukes.jk_cz -2
# Rebota: cap enrere en aquell eix, amb el #bounce % de la velocitat amb que ha picat
execute if score #bx daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vx = #ox daisukes.jk
execute if score #bx daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vx *= #bounce daisukes.jk
execute if score #bx daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vx /= #-100 daisukes.jk
execute if score #bz daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vz = #oz daisukes.jk
execute if score #bz daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vz *= #bounce daisukes.jk
execute if score #bz daisukes.jk matches 1 run scoreboard players operation @s daisukes.jk_vz /= #-100 daisukes.jk
scoreboard players operation #bx daisukes.jk += #bz daisukes.jk
execute if score #bx daisukes.jk matches 1.. run function daisukes:modifiers/jump_king/bounce
