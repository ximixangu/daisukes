# Enganxat: comenca a flotar, i a cadascu li brilla un objecte
scoreboard players set #phase daisukes.anchor 3
scoreboard players set #t daisukes.anchor 0
scoreboard players set #reveal daisukes.anchor 15
execute as @e[type=minecraft:player,tag=daisukes.anchor_p,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/anchor/lift
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 0.8 1.2
execute store result storage daisukes:anchor m.n int 1 run scoreboard players get #event daisukes.anchor
tag @a remove daisukes.anchor_m
execute as @e[type=minecraft:player,gamemode=!spectator] run function daisukes:modifiers/anchor/mark
# Barra: ⚓ i el nom de l'encadenat; es buida a cada baula
bossbar set daisukes:anchor name ["", {"text": "⚓ ", "color": "#6FA8DC"}, {"selector": "@a[tag=daisukes.anchor_p]", "color": "white"}]
execute store result bossbar daisukes:anchor max run scoreboard players get #all daisukes.anchor
execute store result bossbar daisukes:anchor value run scoreboard players get #links daisukes.anchor
bossbar set daisukes:anchor players @a
bossbar set daisukes:anchor visible true
