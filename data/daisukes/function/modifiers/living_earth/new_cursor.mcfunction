# Un marcador per jugador al centre del bloc que mira. Si n'havia tingut un (ha mort, ha tornat...), torna a picar normal
execute if entity @s[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_cursor", "daisukes.earth_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth = #me daisukes.earth
scoreboard players set @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth_k 0
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new
