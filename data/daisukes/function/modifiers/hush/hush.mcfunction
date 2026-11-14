# Boques noves: pugen del terra (teleport_duration ho fa suau)
execute as @e[type=block_display,tag=daisukes.hush_new] at @s run tp @s ~ ~1 ~
tag @e[type=block_display,tag=daisukes.hush_new] remove daisukes.hush_new

scoreboard players remove #time daisukes.hush 1
execute if score #phase daisukes.hush matches 2 store result bossbar daisukes:hush value run scoreboard players get #time daisukes.hush
execute if score #phase daisukes.hush matches 2 if score #ring daisukes.hush matches 0 as @a at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1
execute if score #time daisukes.hush matches ..0 if score #phase daisukes.hush matches 1 run return run function daisukes:modifiers/hush/silence
execute if score #time daisukes.hush matches ..0 run function daisukes:modifiers/hush/end
