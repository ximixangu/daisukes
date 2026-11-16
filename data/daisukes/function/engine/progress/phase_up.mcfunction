# La dificultat ha pujat de fase durant la partida (engine/progress/update_count; #new_phase i #new_count ja hi son).
# Fases que alternen (2: 2-1, 4: 3-2): els dos nombres; les altres: quants en surten
execute if score #new_phase daisukes.math matches 2 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up: ", "color": "red", "bold": true}, {"score": {"name": "#alternate_high", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": "-", "color": "gold", "bold": true}, {"score": {"name": "#alternate_low", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " (", "color": "gray"}, {"score": {"name": "#alternate_high", "objective": "daisukes.config"}, "color": "gray"}, {"text": " and ", "color": "gray"}, {"score": {"name": "#alternate_low", "objective": "daisukes.config"}, "color": "gray"}, {"text": " modifiers, alternating)", "color": "gray"}]
execute if score #new_phase daisukes.math matches 4 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up: ", "color": "red", "bold": true}, {"score": {"name": "#late_high", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": "-", "color": "gold", "bold": true}, {"score": {"name": "#late_low", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " (", "color": "gray"}, {"score": {"name": "#late_high", "objective": "daisukes.config"}, "color": "gray"}, {"text": " and ", "color": "gray"}, {"score": {"name": "#late_low", "objective": "daisukes.config"}, "color": "gray"}, {"text": " modifiers, alternating)", "color": "gray"}]
execute unless score #new_phase daisukes.math matches 2 unless score #new_phase daisukes.math matches 4 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Difficulty up: ", "color": "red", "bold": true}, {"score": {"name": "#new_count", "objective": "daisukes.math"}, "color": "gold", "bold": true}, {"text": " modifiers", "color": "gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 1.6

# Si n'han de sortir mes dels que hi ha actius, el canvi arriba d'aqui a 5 s amb el compte enrere
# (si no, els d'ara es queden fins al canvi normal)
execute store result score #active_n daisukes.math run data get storage daisukes:state active
execute unless score #new_count daisukes.math > #active_n daisukes.math run return 0
scoreboard players operation #cap daisukes.math = #timer_threshold daisukes.timer
scoreboard players remove #cap daisukes.math 101
execute if score #timer daisukes.timer < #cap daisukes.math run scoreboard players operation #timer daisukes.timer = #cap daisukes.math
