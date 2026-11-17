# Al centre del bloc que s'acaba de posar: es posa vermell i als 2 s torna
execute if block ~ ~ ~ #daisukes:living_earth/usable run return 0
# Nomes amb el raig (quan no se sap on es): si ha anat a parar al bloc que ja mirava (gira molt de pressa), no es aquest
execute if score #bits daisukes.earth matches 0 as @e[type=minecraft:marker,tag=daisukes.earth_cursor,distance=..0.01] if score @s daisukes.earth = #me daisukes.earth run return 0
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return 0
# Si era un forat, ja no hi tornara el negre
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait,distance=..0.5] run function daisukes:modifiers/living_earth/remove
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_placed", "daisukes.earth_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth = #me daisukes.earth
scoreboard players set @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth_t 40
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_shell"], block_state: {Name: "minecraft:pink_stained_glass"}, brightness: {sky: 15, block: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.505f, -0.505f, -0.505f], scale: [1.01f, 1.01f, 1.01f]}}
scoreboard players set #marked daisukes.earth 1
