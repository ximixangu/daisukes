# Posa en marxa el repte. En carregar el mon (o amb /reload) ja no comenca sol: cal aquesta comanda
# (o /function daisukes:reset, que a mes comenca una partida nova des de zero)
# /function daisukes:start

# Partida ja guanyada (drac mort): no es torna a engegar, cal una partida nova
execute if score #victory daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Challenge already completed. New game: ", "color": "gray"}, {"text": "/function daisukes:reset", "color": "white"}]
execute if score #victory daisukes.engine matches 1 run return 0

# Partida perduda (ha mort algu): tampoc es torna a engegar
execute if score #defeat daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Challenge failed. New game: ", "color": "gray"}, {"text": "/function daisukes:reset", "color": "white"}]
execute if score #defeat daisukes.engine matches 1 run return 0

# Ja esta en marxa: no es toca res
execute if score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge is already running", "color": "gray"}]
execute if score #engine_active daisukes.engine matches 1 run return 0

# Primer cop d'aquesta partida (encara no ha avancat gens): presentacio amb el titol Challenge Mode
execute if score #elapsed daisukes.engine matches ..0 run function daisukes:engine/begin

# S'havia aturat amb debug/stop a mitja partida: continua sense titol, amb els mateixos modificadors
# i el mateix temps fins al canvi
execute if score #elapsed daisukes.engine matches 1.. run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge resumed", "color": "gray"}]
execute if score #elapsed daisukes.engine matches 1.. run function daisukes:engine/restore
execute if score #elapsed daisukes.engine matches 1.. run function daisukes:engine/resume
