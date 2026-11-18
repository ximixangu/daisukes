# La dificultat ha pujat durant la partida (engine/progress/update_count; #new_top, #new_low i #new_count ja hi son).
# Si la fase alterna, els dos nombres (p. ex. 2-1); si no, quants en surten
execute if score #new_low daisukes.math < #new_top daisukes.math run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up: ", "color": "red", "bold": true}, {"score": {"name": "#new_top", "objective": "daisukes.math"}, "color": "gold", "bold": true}, {"text": "-", "color": "gold", "bold": true}, {"score": {"name": "#new_low", "objective": "daisukes.math"}, "color": "gold", "bold": true}, {"text": " (", "color": "gray"}, {"score": {"name": "#new_top", "objective": "daisukes.math"}, "color": "gray"}, {"text": " and ", "color": "gray"}, {"score": {"name": "#new_low", "objective": "daisukes.math"}, "color": "gray"}, {"text": " modifiers, alternating)", "color": "gray"}]
execute unless score #new_low daisukes.math < #new_top daisukes.math run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up: ", "color": "red", "bold": true}, {"score": {"name": "#new_top", "objective": "daisukes.math"}, "color": "gold", "bold": true}, {"text": " modifiers", "color": "gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 1.6

# Si n'han de sortir mes dels que hi ha actius, el canvi arriba d'aqui a 5 s amb el compte enrere
# (si no, els d'ara es queden fins al canvi normal)
execute store result score #active_n daisukes.math run data get storage daisukes:state active
execute unless score #new_count daisukes.math > #active_n daisukes.math run return 0
scoreboard players operation #cap daisukes.math = #timer_threshold daisukes.timer
scoreboard players remove #cap daisukes.math 101
execute if score #timer daisukes.timer < #cap daisukes.math run scoreboard players operation #timer daisukes.timer = #cap daisukes.math
