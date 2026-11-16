# Fase de dificultat i quants modificadors surten al proper canvi. Es recalcula cada tick; la fase nomes puja:
#   1 al principi (#start_count)
#   2 dificultat 2-1: passats #alternate_seconds o en entrar al Nether. Alterna #alternate_high i #alternate_low
#   3 vara de blaze (Into Fire) i tracte amb un piglin (com Oh Shiny), en qualsevol ordre (#nether_goals_count)
#   4 dificultat 3-2: #late_seconds despres de la fase 3. Alterna #late_high i #late_low
#   5 fortalesa, stronghold (Eye Spy) (#stronghold_count)
#   6 End, batalla contra el drac (#end_count)
#   I com a maxim #max_count (si no es 0).
# A les fases que alternen, #alternate diu quin toca (0 el gran, 1 el petit): el gira engine/progress/alternate
# despres de cada tirada, i en pujar de fase torna a 0 (cada fase comenca pel gran)
scoreboard players set #new_phase daisukes.math 1

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

# Puja de fase durant la partida: la nova comenca pel nombre gran
execute if score #silent daisukes.math matches 0 if score #new_phase daisukes.math > #current_phase daisukes.engine run scoreboard players set #alternate daisukes.engine 0

# Modificadors de la fase
scoreboard players operation #new_count daisukes.math = #start_count daisukes.config
execute if score #new_phase daisukes.math matches 2 run scoreboard players operation #new_count daisukes.math = #alternate_high daisukes.config
execute if score #new_phase daisukes.math matches 2 if score #alternate daisukes.engine matches 1 run scoreboard players operation #new_count daisukes.math = #alternate_low daisukes.config
execute if score #new_phase daisukes.math matches 3 run scoreboard players operation #new_count daisukes.math = #nether_goals_count daisukes.config
execute if score #new_phase daisukes.math matches 4 run scoreboard players operation #new_count daisukes.math = #late_high daisukes.config
execute if score #new_phase daisukes.math matches 4 if score #alternate daisukes.engine matches 1 run scoreboard players operation #new_count daisukes.math = #late_low daisukes.config
execute if score #new_phase daisukes.math matches 5 run scoreboard players operation #new_count daisukes.math = #stronghold_count daisukes.config
execute if score #new_phase daisukes.math matches 6 run scoreboard players operation #new_count daisukes.math = #end_count daisukes.config
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #new_count daisukes.math < #max_count daisukes.config
execute if score #new_count daisukes.math matches ..-1 run scoreboard players set #new_count daisukes.math 0

# Si ha canviat, es desa per a la seguent tirada
execute unless score #new_count daisukes.math = #current_count daisukes.engine store result storage daisukes:config count int 1 run scoreboard players get #new_count daisukes.math

# Ha pujat de fase durant la partida: avis i, si n'han de sortir mes dels que hi ha ara, canvi d'aqui a 5 s
execute if score #silent daisukes.math matches 0 if score #new_phase daisukes.math > #current_phase daisukes.engine run function daisukes:engine/progress/phase_up

scoreboard players operation #current_phase daisukes.engine = #new_phase daisukes.math
scoreboard players operation #current_count daisukes.engine = #new_count daisukes.math
