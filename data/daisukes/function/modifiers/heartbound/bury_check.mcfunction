# Al centre del bloc candidat. Ni massa a prop del jugador, ni a la vista, ni al costat d'un altre cor
execute if entity @a[tag=daisukes.heart_me,distance=..5] run return 0
execute unless block ~ ~ ~ #daisukes:heartbound/host run return 0
execute if block ~1 ~ ~ #minecraft:replaceable run return 0
execute if block ~-1 ~ ~ #minecraft:replaceable run return 0
execute if block ~ ~1 ~ #minecraft:replaceable run return 0
execute if block ~ ~-1 ~ #minecraft:replaceable run return 0
execute if block ~ ~ ~1 #minecraft:replaceable run return 0
execute if block ~ ~ ~-1 #minecraft:replaceable run return 0
execute if entity @e[type=minecraft:interaction,tag=daisukes.heart_core,distance=..4] run return 0
# El cor: una interaction 0,005 mes gran que el bloc, perque els cops li arribin a ella i no es pugui picar com un bloc
summon minecraft:interaction ~ ~-0.505 ~ {width: 1.01f, height: 1.01f, response: 0b, Tags: ["daisukes.heart", "daisukes.heart_core", "daisukes.heart_new"]}
execute as @e[type=minecraft:interaction,tag=daisukes.heart_new] run function daisukes:modifiers/heartbound/kind
setblock ~ ~ ~ minecraft:creaking_heart[axis=y,creaking_heart_state=uprooted,natural=false]
playsound minecraft:block.creaking_heart.spawn block @a ~ ~ ~ 1.5 0.8
scoreboard players set #ok daisukes.heart 1
