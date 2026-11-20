tag @s add daisukes.ice_run
execute store result storage daisukes:ice_run new.x int 1 run data get entity @s Pos[0]
execute store result storage daisukes:ice_run new.y int 1 run data get entity @s Pos[1]
execute store result storage daisukes:ice_run new.z int 1 run data get entity @s Pos[2]
execute store result storage daisukes:ice_run new.t int 1 run scoreboard players get #break_at daisukes.ice_run
data modify storage daisukes:ice_run trail append from storage daisukes:ice_run new
kill @s
