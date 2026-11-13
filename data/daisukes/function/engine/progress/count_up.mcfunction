tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up! ", "color": "red", "bold": true}, {"text": "Next change: ", "color": "gray"}, {"score": {"name": "#new_count", "objective": "daisukes.math"}, "color": "gold", "bold": true}, {"text": " modifiers", "color": "gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 1.6

# El canvi arriba d'aqui a 5 s amb el compte enrere (si no havia de passar abans)
scoreboard players operation #cap daisukes.math = #timer_threshold daisukes.timer
scoreboard players remove #cap daisukes.math 101
execute if score #timer daisukes.timer < #cap daisukes.math run scoreboard players operation #timer daisukes.timer = #cap daisukes.math
