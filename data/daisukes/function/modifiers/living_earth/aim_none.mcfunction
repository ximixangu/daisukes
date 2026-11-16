execute if score #mode daisukes.earth matches 1 run return 0
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor] if score @s daisukes.earth = #me daisukes.earth run scoreboard players set @s daisukes.earth_t 0
