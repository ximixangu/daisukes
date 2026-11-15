# Dificultat (debug/status): fase actual i el que la fara pujar (engine/progress/update_count)
scoreboard players operation #alt_min daisukes.math = #alternate_seconds daisukes.config
scoreboard players operation #alt_min daisukes.math /= #60 daisukes.math

# Minuts que falten per a la fase 4 (#blaze_late_seconds despres de la primera vara de blaze)
scoreboard players operation #late_min daisukes.math = #blaze_late_seconds daisukes.config
scoreboard players operation #late_min daisukes.math *= #20 daisukes.math
scoreboard players operation #late_min daisukes.math += #blaze_time daisukes.engine
scoreboard players operation #late_min daisukes.math -= #elapsed daisukes.engine
scoreboard players operation #late_min daisukes.math /= #20 daisukes.math
scoreboard players operation #late_min daisukes.math /= #60 daisukes.math

execute if score #current_phase daisukes.engine matches ..1 run tellraw @a ["", {"text": "   Difficulty: ", "color": "gray"}, {"score": {"name": "#start_count", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " · ", "color": "gray"}, {"score": {"name": "#alternate_high", "objective": "daisukes.config"}, "color": "white"}, {"text": "-", "color": "white"}, {"score": {"name": "#alternate_low", "objective": "daisukes.config"}, "color": "white"}, {"text": " at minute ", "color": "gray"}, {"score": {"name": "#alt_min", "objective": "daisukes.math"}, "color": "white"}, {"text": " or in the Nether", "color": "gray"}]
execute if score #current_phase daisukes.engine matches 2 run tellraw @a ["", {"text": "   Difficulty: ", "color": "gray"}, {"score": {"name": "#alternate_high", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": "-", "color": "gold", "bold": true}, {"score": {"name": "#alternate_low", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " · ", "color": "gray"}, {"score": {"name": "#blaze_count", "objective": "daisukes.config"}, "color": "white"}, {"text": " with the first blaze rod", "color": "gray"}]
execute if score #current_phase daisukes.engine matches 3 run tellraw @a ["", {"text": "   Difficulty: ", "color": "gray"}, {"score": {"name": "#blaze_count", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " · ", "color": "gray"}, {"score": {"name": "#blaze_late_count", "objective": "daisukes.config"}, "color": "white"}, {"text": " in ", "color": "gray"}, {"score": {"name": "#late_min", "objective": "daisukes.math"}, "color": "white"}, {"text": " min", "color": "gray"}]
execute if score #current_phase daisukes.engine matches 4 run tellraw @a ["", {"text": "   Difficulty: ", "color": "gray"}, {"score": {"name": "#blaze_late_count", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " · ", "color": "gray"}, {"score": {"name": "#end_count", "objective": "daisukes.config"}, "color": "white"}, {"text": " in the End", "color": "gray"}]
execute if score #current_phase daisukes.engine matches 5 run tellraw @a ["", {"text": "   Difficulty: ", "color": "gray"}, {"score": {"name": "#end_count", "objective": "daisukes.config"}, "color": "gold", "bold": true}, {"text": " (End)", "color": "gray"}]
