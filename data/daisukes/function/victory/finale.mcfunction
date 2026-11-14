# Ultim cop de petards (victory/beat): una traca final per a cada jugador i comiat al xat
execute as @e[type=minecraft:player] at @s run function daisukes:victory/burst
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "GG! ", "color": "gold", "bold": true}, {"text": "Thanks for playing Daisuke's Challenge", "color": "yellow"}]
