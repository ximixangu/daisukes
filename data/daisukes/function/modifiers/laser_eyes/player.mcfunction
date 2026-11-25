# Com a cada jugador viu, als seus peus i mirant on mira
execute unless score @s daisukes.le_id matches 1.. store result score @s daisukes.le_id run scoreboard players add #ids daisukes.le 1
scoreboard players operation #me daisukes.le = @s daisukes.le_id

# Al llit no dispara (si no, cremaria el sostre mentre dorm): sense lasers i sense escalfar res
execute if block ~ ~ ~ #minecraft:beds run return run scoreboard players set @s daisukes.le_heat 0

# El raig no el toca a ell ni el que munta (el cavall que te davant dels ulls)
tag @s add daisukes.le_me
execute on vehicle run tag @s add daisukes.le_me
scoreboard players operation #tgt daisukes.le = @s daisukes.le_tgt
scoreboard players operation #heat daisukes.le = @s daisukes.le_heat
function daisukes:modifiers/laser_eyes/ray/start
scoreboard players operation @s daisukes.le_tgt = #tgt daisukes.le
scoreboard players operation @s daisukes.le_heat = #heat daisukes.le
function daisukes:modifiers/laser_eyes/beam/update
execute on vehicle run tag @s remove daisukes.le_me
tag @s remove daisukes.le_me
