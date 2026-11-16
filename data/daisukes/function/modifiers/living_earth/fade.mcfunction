# Cada tick: els 3 negres que fa mes que es van trencar, i tots els que la tisora ja ha passat. Als 3 s, els que quedin
# (si se n'han carregat de nous mentrestant), de cop. Els que no saben quan es van trencar (eren en un chunk sense
# carregar d'una partida d'abans), primer
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] unless score @s daisukes.earth_q matches -2147483648.. run scoreboard players set @s daisukes.earth_q 0
scoreboard players remove #left daisukes.earth_q 1
execute if score #left daisukes.earth_q matches ..0 run return run function daisukes:modifiers/living_earth/fade_all
function daisukes:modifiers/living_earth/fade_one
function daisukes:modifiers/living_earth/fade_one
function daisukes:modifiers/living_earth/fade_one
scoreboard players operation #cut daisukes.earth_q += #step daisukes.earth_q
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] if score @s daisukes.earth_q <= #cut daisukes.earth_q at @s run function daisukes:modifiers/living_earth/fade_block
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black] run return run schedule function daisukes:modifiers/living_earth/fade 1t replace
function daisukes:modifiers/living_earth/fade_end
