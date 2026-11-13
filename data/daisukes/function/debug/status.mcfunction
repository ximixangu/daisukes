# Estat actual de la partida i configuracio aplicada:
# /function daisukes:debug/status

# Temps jugat
scoreboard players operation #secs daisukes.math = #elapsed daisukes.engine
scoreboard players operation #secs daisukes.math /= #20 daisukes.math
scoreboard players operation #mins daisukes.math = #secs daisukes.math
scoreboard players operation #mins daisukes.math /= #60 daisukes.math
scoreboard players operation #secs daisukes.math %= #60 daisukes.math

# Interval de canvi actual i temps fins al seguent canvi
scoreboard players operation #interval_s daisukes.math = #timer_threshold daisukes.timer
scoreboard players operation #interval_s daisukes.math /= #20 daisukes.math
scoreboard players operation #next_change_s daisukes.math = #timer_threshold daisukes.timer
scoreboard players operation #next_change_s daisukes.math -= #timer daisukes.timer
scoreboard players operation #next_change_s daisukes.math /= #20 daisukes.math

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge ", "color": "red", "bold": true}, {"score": {"name": "#mins", "objective": "daisukes.math"}, "color": "white"}, {"text": " min ", "color": "gray"}, {"score": {"name": "#secs", "objective": "daisukes.math"}, "color": "white"}, {"text": " s played", "color": "gray"}]
tellraw @a ["", {"text": "   Modifiers: ", "color": "gray"}, {"score": {"name": "#current_count", "objective": "daisukes.engine"}, "color": "gold", "bold": true}, {"text": " · change every ", "color": "gray"}, {"score": {"name": "#interval_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s (next in ", "color": "gray"}, {"score": {"name": "#next_change_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s)", "color": "gray"}]

# Seguent augment per temps
execute if score #escalate_ticks daisukes.math matches 1.. run function daisukes:debug/status_escalation
execute unless score #escalate_ticks daisukes.math matches 1.. run tellraw @a ["", {"text": "   Increase over time: ", "color": "gray"}, {"text": "off", "color": "white"}]

# Fase
execute if score #end_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "End", "color": "light_purple"}]
execute unless score #end_reached daisukes.engine matches 1 if score #nether_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "Nether", "color": "red"}]
execute unless score #end_reached daisukes.engine matches 1 unless score #nether_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "Overworld", "color": "green"}]
