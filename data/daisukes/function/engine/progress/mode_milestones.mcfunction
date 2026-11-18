# Mode per fites (Daisuke's), des d'engine/progress/update_count. Fases (nomes pugen):
#   1 al principi
#   2 dificultat 2-1: passats #alternate_seconds o en entrar al Nether
#   3 vara de blaze (Into Fire) i tracte amb un piglin (com Oh Shiny), en qualsevol ordre
#   4 dificultat 3-2: #late_seconds despres de la fase 3
#   5 fortalesa, stronghold (Eye Spy)
#   6 End, batalla contra el drac
# Els nombres de core/load son amb 1 modificador a l'inici (1 · 2-1 · 2 · 3-2 · 3 · 4): si al menu se'n trien
# mes (#start_count), totes les fases en tenen els mateixos de mes
scoreboard players operation #phase_ticks daisukes.math = #alternate_seconds daisukes.config
scoreboard players operation #phase_ticks daisukes.math *= #20 daisukes.math
execute if score #alternate_seconds daisukes.config matches 1.. if score #elapsed daisukes.engine >= #phase_ticks daisukes.math run scoreboard players set #new_phase daisukes.math 2
execute if score #nether_reached daisukes.engine matches 1 run scoreboard players set #new_phase daisukes.math 2

execute if score #nether_goals daisukes.engine matches 1 run scoreboard players set #new_phase daisukes.math 3

scoreboard players operation #phase_ticks daisukes.math = #late_seconds daisukes.config
scoreboard players operation #phase_ticks daisukes.math *= #20 daisukes.math
scoreboard players operation #phase_ticks daisukes.math += #nether_goals_time daisukes.engine
execute if score #nether_goals daisukes.engine matches 1 if score #elapsed daisukes.engine >= #phase_ticks daisukes.math run scoreboard players set #new_phase daisukes.math 4

execute if score #stronghold_reached daisukes.engine matches 1 run scoreboard players set #new_phase daisukes.math 5

execute if score #end_reached daisukes.engine matches 1 run scoreboard players set #new_phase daisukes.math 6

# Nombres de la fase (gran i petit)
scoreboard players set #new_top daisukes.math 1
scoreboard players set #new_low daisukes.math 1
execute if score #new_phase daisukes.math matches 2 run scoreboard players operation #new_top daisukes.math = #alternate_high daisukes.config
execute if score #new_phase daisukes.math matches 2 run scoreboard players operation #new_low daisukes.math = #alternate_low daisukes.config
execute if score #new_phase daisukes.math matches 3 run scoreboard players operation #new_top daisukes.math = #nether_goals_count daisukes.config
execute if score #new_phase daisukes.math matches 3 run scoreboard players operation #new_low daisukes.math = #nether_goals_count daisukes.config
execute if score #new_phase daisukes.math matches 4 run scoreboard players operation #new_top daisukes.math = #late_high daisukes.config
execute if score #new_phase daisukes.math matches 4 run scoreboard players operation #new_low daisukes.math = #late_low daisukes.config
execute if score #new_phase daisukes.math matches 5 run scoreboard players operation #new_top daisukes.math = #stronghold_count daisukes.config
execute if score #new_phase daisukes.math matches 5 run scoreboard players operation #new_low daisukes.math = #stronghold_count daisukes.config
execute if score #new_phase daisukes.math matches 6 run scoreboard players operation #new_top daisukes.math = #end_count daisukes.config
execute if score #new_phase daisukes.math matches 6 run scoreboard players operation #new_low daisukes.math = #end_count daisukes.config

# Modificadors de mes a l'inici
scoreboard players operation #offset daisukes.math = #start_count daisukes.config
scoreboard players remove #offset daisukes.math 1
scoreboard players operation #new_top daisukes.math += #offset daisukes.math
scoreboard players operation #new_low daisukes.math += #offset daisukes.math
