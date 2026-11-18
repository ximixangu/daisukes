# Mode per temps, des d'engine/progress/update_count: #start_count a l'inici i un mes cada #every_seconds de
# partida (temps jugat). La fase es el nombre d'augments + 1 (nomes puja)
scoreboard players operation #phase_ticks daisukes.math = #every_seconds daisukes.config
scoreboard players operation #phase_ticks daisukes.math *= #20 daisukes.math
execute if score #phase_ticks daisukes.math matches ..0 run scoreboard players set #phase_ticks daisukes.math 12000

scoreboard players operation #new_phase daisukes.math = #elapsed daisukes.engine
scoreboard players operation #new_phase daisukes.math /= #phase_ticks daisukes.math

scoreboard players operation #new_top daisukes.math += #new_phase daisukes.math
scoreboard players operation #new_low daisukes.math = #new_top daisukes.math
scoreboard players add #new_phase daisukes.math 1
