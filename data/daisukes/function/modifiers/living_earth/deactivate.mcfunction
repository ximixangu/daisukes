# Fora el que esperava: els forats que encara no havien tornat, els cursors, els avisos vermells (aquells blocs es
# queden on son) i el picar a mitja velocitat. La caixa forta ja no cal
kill @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait]
kill @e[type=minecraft:marker,tag=daisukes.earth_cursor]
kill @e[type=minecraft:marker,tag=daisukes.earth_placed]
kill @e[type=minecraft:block_display,tag=daisukes.earth_shell]
execute as @a[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
execute in minecraft:overworld run forceload remove 29999008 29999008
scoreboard objectives remove daisukes.earth
scoreboard objectives remove daisukes.earth_t
scoreboard objectives remove daisukes.earth_v
# (restes de la primera versio de Living Earth, si n'hi havia)
kill @e[tag=daisukes.earth,type=!minecraft:player,tag=!daisukes.earth_black]
scoreboard objectives remove daisukes.earth_k
scoreboard objectives remove daisukes.earth_p
scoreboard objectives remove daisukes.earth_s
scoreboard objectives remove daisukes.earth_n

# Els blocs negres desapareixen en l'ordre en que es van trencar, en 3 s com a molt (encara que ja hagi comencat el
# modificador seguent)
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] unless score @s daisukes.earth_q matches -2147483648.. run scoreboard players set @s daisukes.earth_q 0
data modify storage daisukes:earth fading set value 1b
scoreboard players set #watch daisukes.earth_q 0
scoreboard players set #left daisukes.earth_q 60
execute if entity @e[type=minecraft:block_display,tag=daisukes.earth_black] run function daisukes:modifiers/living_earth/fade_setup
function daisukes:modifiers/living_earth/fade
