# Fora els forats que esperaven, els cursors i els blocs posats (es queden on son); tothom torna a picar normal
kill @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait]
kill @e[type=minecraft:marker,tag=daisukes.earth_cursor]
kill @e[type=minecraft:marker,tag=daisukes.earth_placed]
kill @e[type=minecraft:block_display,tag=daisukes.earth_shell]
execute as @a[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
tag @a remove daisukes.earth_owner
scoreboard players set #on daisukes.earth 0
advancement revoke @a only daisukes:living_earth/where
advancement revoke @a only daisukes:living_earth/used
kill @e[type=minecraft:marker,tag=daisukes.earth_pend]
kill @e[type=minecraft:marker,tag=daisukes.earth_cand]
tag @a remove daisukes.earth_placing
tag @a remove daisukes.earth_many
tag @a remove daisukes.earth_who
data remove storage daisukes:earth main
data remove storage daisukes:earth off
data remove storage daisukes:earth w
execute in minecraft:overworld run forceload remove 29999008 29999008
data remove storage daisukes:earth vault
scoreboard objectives remove daisukes.earth_k
scoreboard objectives remove daisukes.earth_t
scoreboard objectives remove daisukes.earth_v
# Els negres desapareixen un per un, en l'ordre en que es van trencar, molt de pressa (en uns 2 s)
execute store result score #total daisukes.earth if entity @e[type=minecraft:block_display,tag=daisukes.earth_black]
scoreboard players operation #fstep daisukes.earth = #total daisukes.earth
scoreboard players set #40 daisukes.earth 40
scoreboard players operation #fstep daisukes.earth /= #40 daisukes.earth
execute if score #fstep daisukes.earth matches ..2 run scoreboard players set #fstep daisukes.earth 3
scoreboard players set #fade daisukes.earth 0
data modify storage daisukes:earth fading set value 1b
function daisukes:modifiers/living_earth/fade
