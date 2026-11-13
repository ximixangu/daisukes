# (temps jugat / interval d'augment) * increment
scoreboard players operation #steps daisukes.math = #elapsed daisukes.engine
scoreboard players operation #steps daisukes.math /= #escalate_ticks daisukes.math
scoreboard players operation #steps daisukes.math *= #escalate_step daisukes.config
scoreboard players operation #new_count daisukes.math += #steps daisukes.math
