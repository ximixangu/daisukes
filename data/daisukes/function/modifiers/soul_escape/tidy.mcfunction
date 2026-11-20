scoreboard players set #clock daisukes.soul 0
execute as @e[type=minecraft:marker,tag=daisukes.soul_marker] unless predicate daisukes:soul_escape/has_host run kill @s
