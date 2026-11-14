# Sonda (als peus del jugador): gira cap a #yaw, avança #d blocs, puja 6 i baixa fins a terra ferma
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw daisukes.bspot
execute at @s run function daisukes:modifiers/blind_spot/probe_step
execute at @s align xyz run tp @s ~0.5 ~6 ~0.5
scoreboard players set #step daisukes.bspot 0
execute at @s if function daisukes:modifiers/blind_spot/probe_down at @s run function daisukes:modifiers/blind_spot/drop
kill @s
