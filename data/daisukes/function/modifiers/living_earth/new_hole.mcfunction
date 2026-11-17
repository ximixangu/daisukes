# Al centre del bloc que s'acaba de trencar. El bloc (guardat a la caixa quan el mirava) va a una casella seva
scoreboard players add #slot daisukes.earth 1
execute if score #slot daisukes.earth matches 4096.. run scoreboard players set #slot daisukes.earth 0
scoreboard players operation #v daisukes.earth = #slot daisukes.earth
function daisukes:modifiers/living_earth/vault_xyz
function daisukes:modifiers/living_earth/stash with storage daisukes:earth v
# I la seva forma, per a la capa negra
function daisukes:modifiers/living_earth/read with storage daisukes:earth v
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_black", "daisukes.earth_wait", "daisukes.earth_new"], brightness: {sky: 0, block: 0}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
data modify entity @e[type=minecraft:block_display,tag=daisukes.earth_new,limit=1] block_state set from storage daisukes:earth s
# Torxes, escales, rails i fanals: tornen nomes com una ombra negra, que no es pot fer servir
execute if data storage daisukes:earth {ghost: 1b} run tag @e[type=minecraft:block_display,tag=daisukes.earth_new] add daisukes.earth_ghost
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.earth_new] daisukes.earth_t 80
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.earth_new] daisukes.earth_v = #slot daisukes.earth
tag @e[type=minecraft:block_display,tag=daisukes.earth_new] remove daisukes.earth_new
scoreboard players add #holes daisukes.earth 1
