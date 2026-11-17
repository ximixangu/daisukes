scoreboard players set #mode daisukes.earth 1
scoreboard players set #step daisukes.earth 0
execute as @a[tag=daisukes.earth_who,limit=1] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/living_earth/ray
scoreboard players set #step daisukes.earth 0
execute if score #marked daisukes.earth matches 0 as @a[tag=daisukes.earth_who,limit=1] at @e[type=minecraft:marker,tag=daisukes.earth_cur,limit=1] rotated as @e[type=minecraft:marker,tag=daisukes.earth_cur,limit=1] anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/living_earth/ray
