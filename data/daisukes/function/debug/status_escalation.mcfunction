# Segons que falten per al seguent augment: interval - (temps jugat % interval)
scoreboard players operation #rem daisukes.math = #elapsed daisukes.engine
scoreboard players operation #rem daisukes.math %= #escalate_ticks daisukes.math
scoreboard players operation #next_up_s daisukes.math = #escalate_ticks daisukes.math
scoreboard players operation #next_up_s daisukes.math -= #rem daisukes.math
scoreboard players operation #next_up_s daisukes.math /= #20 daisukes.math

tellraw @a ["", {"text": "   +", "color": "gray"}, {"score": {"name": "#escalate_step", "objective": "daisukes.config"}, "color": "white"}, {"text": " every ", "color": "gray"}, {"score": {"name": "#escalate_seconds", "objective": "daisukes.config"}, "color": "white"}, {"text": " s (next in ", "color": "gray"}, {"score": {"name": "#next_up_s", "objective": "daisukes.math"}, "color": "white"}, {"text": " s)", "color": "gray"}]
