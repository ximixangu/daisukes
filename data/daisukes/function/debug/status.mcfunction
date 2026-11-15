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
execute if score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "   Next change: ", "color": "gray"}, {"score": {"name": "#current_count", "objective": "daisukes.engine"}, "color": "gold", "bold": true}, {"text": " modifiers in ", "color": "gray"}, {"score": {"name": "#next_change_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s (every ", "color": "gray"}, {"score": {"name": "#interval_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s)", "color": "gray"}]
execute unless score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "   Change every ", "color": "gray"}, {"score": {"name": "#interval_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s", "color": "gray"}]

# Actius ara (passant el ratoli per sobre, que fa cadascun)
execute if data storage daisukes:temp chat_texts[0] run tellraw @a ["", {"text": "   Active: ", "color": "gray"}, {"nbt": "chat_texts[]", "storage": "daisukes:temp", "interpret": true, "separator": {"text": ", ", "color": "gray"}}]
execute unless score #engine_active daisukes.engine matches 1 unless score #victory daisukes.engine matches 1 if score #elapsed daisukes.engine matches ..0 run tellraw @a ["", {"text": "   Engine: ", "color": "gray"}, {"text": "not started", "color": "red"}, {"text": " (/function daisukes:start)", "color": "dark_gray"}]
execute unless score #engine_active daisukes.engine matches 1 unless score #victory daisukes.engine matches 1 unless score #defeat daisukes.engine matches 1 if score #elapsed daisukes.engine matches 1.. run tellraw @a ["", {"text": "   Engine: ", "color": "gray"}, {"text": "stopped", "color": "red"}, {"text": " (/function daisukes:start to resume)", "color": "dark_gray"}]
execute if score #victory daisukes.engine matches 1 run tellraw @a ["", {"text": "   Engine: ", "color": "gray"}, {"text": "challenge completed, Ender Dragon defeated", "color": "gold"}, {"text": " (/function daisukes:reset for a new game)", "color": "dark_gray"}]
execute if score #defeat daisukes.engine matches 1 run tellraw @a ["", {"text": "   Engine: ", "color": "gray"}, {"text": "challenge failed, a player died", "color": "red"}, {"text": " (/function daisukes:reset for a new game)", "color": "dark_gray"}]

# Dificultat: fase actual i que la fara pujar
function daisukes:debug/status_difficulty

# Fase
execute if score #end_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "End", "color": "light_purple"}]
execute unless score #end_reached daisukes.engine matches 1 if score #nether_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "Nether", "color": "red"}]
execute unless score #end_reached daisukes.engine matches 1 unless score #nether_reached daisukes.engine matches 1 run tellraw @a ["", {"text": "   Phase: ", "color": "gray"}, {"text": "Overworld", "color": "green"}]
