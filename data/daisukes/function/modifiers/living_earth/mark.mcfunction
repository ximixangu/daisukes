# Al centre d'un bloc que s'acaba de posar: un vidre rosa al voltant (vermell l'ultim segon) i als 2 s torna a l'inventari
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return 0
# Si hi havia un forat (o una ombra negra), ja no tornara
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait,distance=..0.5] run function daisukes:modifiers/living_earth/remove
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_ghost,distance=..0.5] run function daisukes:modifiers/living_earth/remove
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_placed", "daisukes.earth_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth = #me daisukes.earth
scoreboard players set @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth_t 40
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new
summon minecraft:block_display ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_shell"], block_state: {Name: "minecraft:pink_stained_glass"}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-0.505f, -0.505f, -0.505f], scale: [1.01f, 1.01f, 1.01f]}}
