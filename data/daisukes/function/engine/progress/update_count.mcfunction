# Fase de dificultat i quants modificadors surten al proper canvi. Es recalcula cada tick; la fase nomes puja.
# Depen del mode triat al menu (#mode):
#   1 fites (Daisuke's): engine/progress/mode_milestones
#   2 per temps: #start_count i un mes cada #every_seconds (engine/progress/mode_time)
#   3 fix: sempre #start_count
# Cada fase dona un nombre gran (#new_top) i un de petit (#new_low): si son diferents, alternen a cada canvi
# (#alternate: 0 el gran, 1 el petit; el gira engine/progress/alternate despres de cada tirada i en pujar de
# fase torna a 0, aixi cada fase comenca pel gran). I com a maxim #max_count (si no es 0)
scoreboard players set #new_phase daisukes.math 1
scoreboard players operation #new_top daisukes.math = #start_count daisukes.config
scoreboard players operation #new_low daisukes.math = #start_count daisukes.config
execute if score #mode daisukes.config matches 1 run function daisukes:engine/progress/mode_milestones
execute if score #mode daisukes.config matches 2 run function daisukes:engine/progress/mode_time

execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #new_top daisukes.math < #max_count daisukes.config
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #new_low daisukes.math < #max_count daisukes.config

# Puja de fase durant la partida: la nova comenca pel nombre gran
execute if score #silent daisukes.math matches 0 if score #new_phase daisukes.math > #current_phase daisukes.engine run scoreboard players set #alternate daisukes.engine 0

# Proper canvi: el gran, o el petit quan toca
scoreboard players operation #new_count daisukes.math = #new_top daisukes.math
execute if score #alternate daisukes.engine matches 1 run scoreboard players operation #new_count daisukes.math = #new_low daisukes.math

# Si ha canviat, es desa per a la seguent tirada
execute unless score #new_count daisukes.math = #current_count daisukes.engine store result storage daisukes:config count int 1 run scoreboard players get #new_count daisukes.math

# Ha pujat durant la partida (nova fase amb algun dels dos nombres mes alt: 1 -> 2-1, 2-1 -> 2, 2 -> 3-2...): avis i,
# si n'han de sortir mes dels que hi ha ara, canvi d'aqui a 5 s. Si el maxim ho deixa igual, no hi ha avis
scoreboard players set #harder daisukes.math 0
execute if score #new_top daisukes.math > #current_top daisukes.engine run scoreboard players set #harder daisukes.math 1
execute if score #new_low daisukes.math > #current_low daisukes.engine run scoreboard players set #harder daisukes.math 1
execute if score #silent daisukes.math matches 0 if score #new_phase daisukes.math > #current_phase daisukes.engine if score #harder daisukes.math matches 1 run function daisukes:engine/progress/phase_up

scoreboard players operation #current_phase daisukes.engine = #new_phase daisukes.math
scoreboard players operation #current_top daisukes.engine = #new_top daisukes.math
scoreboard players operation #current_low daisukes.engine = #new_low daisukes.math
scoreboard players operation #current_count daisukes.engine = #new_count daisukes.math
