# Un dels llocs possibles (al centre del bloc): pot ser el bloc posat si hi ha un bloc que no es dels que es fan servir ni un
# que ja torna. Es del tipus de la ma (dreta o esquerra)?
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_cand,distance=..0.1] run return 0
execute if block ~ ~ ~ #minecraft:replaceable run return 0
execute if block ~ ~ ~ #daisukes:living_earth/usable run return 0
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return 0
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_cand", "daisukes.earth_new"]}
scoreboard players add #g daisukes.earth 1
execute store result score #is daisukes.earth run function daisukes:modifiers/living_earth/is with storage daisukes:earth main
execute if score #is daisukes.earth matches 0 store result score #is daisukes.earth run function daisukes:modifiers/living_earth/is with storage daisukes:earth off
execute if score #is daisukes.earth matches 1 run tag @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] add daisukes.earth_ctype
execute if score #is daisukes.earth matches 1 run scoreboard players add #n daisukes.earth 1
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new
