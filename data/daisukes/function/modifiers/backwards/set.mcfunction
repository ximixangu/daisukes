scoreboard players add _next_id daisukes.backwards_id 1
scoreboard players operation @s daisukes.backwards_id = _next_id daisukes.backwards_id

execute at @s run summon marker ~ ~ ~ {Tags: ["fwd"]}
    execute as @e[type=marker,tag=fwd,limit=1,sort=nearest] unless score @s daisukes.backwards_id = @s daisukes.backwards_id run scoreboard players operation @s daisukes.backwards_id = _next_id daisukes.backwards_id