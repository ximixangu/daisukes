execute at @s run summon marker ~ ~ ~ {Tags:["creeper_marker"]}
execute as @s at @s run ride @e[type=marker,tag=creeper_marker,limit=1,sort=nearest] mount @s
tag @s add creeper_marker