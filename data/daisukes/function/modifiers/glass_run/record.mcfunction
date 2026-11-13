tag @s add daisukes.glass_run
execute store result storage daisukes:glass_run new.x int 1 run data get entity @s Pos[0]
execute store result storage daisukes:glass_run new.y int 1 run data get entity @s Pos[1]
execute store result storage daisukes:glass_run new.z int 1 run data get entity @s Pos[2]
execute store result storage daisukes:glass_run new.t int 1 run scoreboard players get #break_at daisukes.glass_run
data modify storage daisukes:glass_run trail append from storage daisukes:glass_run new
kill @s
