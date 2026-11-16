# Com al cursor, al centre del bloc que s'acaba de trencar. A la caixa forta hi ha la copia del bloc (del tick d'abans)
# (els primers ticks, mentre la caixa forta encara es carrega, no n'hi ha; i les coses que es fan servir no tornen)
$execute in minecraft:overworld unless loaded $(vx) $(vy) $(vz) run return 0
$execute in minecraft:overworld if block $(vx) $(vy) $(vz) #daisukes:living_earth/usable run return 0
$execute in minecraft:overworld if block $(vx) $(vy) $(vz) #daisukes:living_earth/clear run return 0
# Quin bloc es exactament (no es pot llegir amb data: es prova cada bloc i cada propietat). Torxes, escales, rails...: ombra
data remove storage daisukes:earth s
scoreboard players set #k daisukes.earth 0
$execute in minecraft:overworld positioned $(vx) $(vy) $(vz) run function daisukes:modifiers/living_earth/st/find
scoreboard players set #ghost daisukes.earth 0
$execute in minecraft:overworld if block $(vx) $(vy) $(vz) #daisukes:living_earth/ghost run scoreboard players set #ghost daisukes.earth 1
# Blocs que fan llum: tornen negres i solids, pero a sota hi ha un bloc que no fa llum
scoreboard players set #sub daisukes.earth 0
$execute in minecraft:overworld if block $(vx) $(vy) $(vz) #daisukes:living_earth/light run scoreboard players set #sub daisukes.earth 1
# La capa negra (de moment amagada) es qui recorda el bloc
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_black", "daisukes.earth_wait", "daisukes.earth_new"], brightness: {sky: 0, block: 0}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.501f, -0.501f, -0.501f], scale: [0f, 0f, 0f]}}
data modify entity @e[type=minecraft:block_display,tag=daisukes.earth_new,limit=1] block_state set from storage daisukes:earth s
execute if score #ghost daisukes.earth matches 1 run tag @e[type=minecraft:block_display,tag=daisukes.earth_new] add daisukes.earth_ghost
execute if score #ghost daisukes.earth matches 0 if score #sub daisukes.earth matches 1 run tag @e[type=minecraft:block_display,tag=daisukes.earth_new] add daisukes.earth_sub
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.earth_new] daisukes.earth_t 80
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.earth_new] daisukes.earth_v = #k daisukes.earth
scoreboard players add #ord daisukes.earth 1
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.earth_new] daisukes.earth_q = #ord daisukes.earth
tag @e[type=minecraft:block_display,tag=daisukes.earth_new] remove daisukes.earth_new
scoreboard players add #holes daisukes.earth 1
