# Cap jugador viu: es torna a provar d'aqui a 1 s
execute unless entity @e[type=player,gamemode=!spectator] run return run scoreboard players set #time daisukes.potato 20

kill @e[type=item_display,tag=daisukes.potato]
tag @a remove daisukes.potato_holder
tag @e[tag=daisukes.potato_holder] remove daisukes.potato_holder
tag @e[type=player,gamemode=!spectator,sort=random,limit=1] add daisukes.potato_holder

# Cau del cel sobre el cap: patata que gira, amb contorn brillant (es veu de nit i a traves de parets)
execute at @e[tag=daisukes.potato_holder] run summon minecraft:item_display ~ ~4 ~ {Tags: ["daisukes.potato"], item: {id: "minecraft:baked_potato"}, item_display: "ground", teleport_duration: 3, brightness: {sky: 15, block: 15}, Glowing: true, glow_color_override: 16766282, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [1.5f, 1.5f, 1.5f]}}
execute at @e[tag=daisukes.potato_holder] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.2

scoreboard players set #phase daisukes.potato 1
execute as @e[tag=daisukes.potato_holder] at @s run function daisukes:modifiers/hot_potato/receive
