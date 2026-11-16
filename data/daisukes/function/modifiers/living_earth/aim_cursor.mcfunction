# Com al cursor, al centre del bloc que es mira ara
tp @s ~ ~ ~
# Quines caselles del costat son buides (aire, aigua, herba...): si hi posa un bloc, se sabra que es nou
tag @s remove daisukes.earth_fe
tag @s remove daisukes.earth_fw
tag @s remove daisukes.earth_fu
tag @s remove daisukes.earth_fd
tag @s remove daisukes.earth_fs
tag @s remove daisukes.earth_fn
execute if block ~1 ~ ~ #daisukes:living_earth/free run tag @s add daisukes.earth_fe
execute if block ~-1 ~ ~ #daisukes:living_earth/free run tag @s add daisukes.earth_fw
execute if block ~ ~1 ~ #daisukes:living_earth/free run tag @s add daisukes.earth_fu
execute if block ~ ~-1 ~ #daisukes:living_earth/free run tag @s add daisukes.earth_fd
execute if block ~ ~ ~1 #daisukes:living_earth/free run tag @s add daisukes.earth_fs
execute if block ~ ~ ~-1 #daisukes:living_earth/free run tag @s add daisukes.earth_fn
# Les coses que es fan servir no tornen: ni se'n fa copia
execute if block ~ ~ ~ #daisukes:living_earth/usable run return run scoreboard players set @s daisukes.earth_t 3
scoreboard players set @s daisukes.earth_t 1
execute if block ~ ~ ~ #minecraft:replaceable run scoreboard players set @s daisukes.earth_t 2
# Copia exacta del bloc a la casella del jugador, a la caixa forta: si el trenca, al tick seguent encara se sap que era
function daisukes:modifiers/living_earth/photo with entity @s data
