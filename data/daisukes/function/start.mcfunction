# Posa en marxa el repte (boto Start del menu, menu/start). En un mon nou, amb una partida nova o quan Fahare crea un
# mon nou no comenca sol: cal Start (o aquesta comanda, o /function daisukes:reset, que a mes fa una partida nova)
# /function daisukes:start

# Partida ja guanyada (drac mort): no es torna a engegar, cal una partida nova
execute if score #victory daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Challenge already completed. ", "color": "gray"}, {"text": "[New game]", "color": "gold", "click_event": {"action": "show_dialog", "dialog": "daisukes:new_game"}, "hover_event": {"action": "show_text", "value": "Start the challenge again from zero"}}]
execute if score #victory daisukes.engine matches 1 run return 0

# Partida perduda (ha mort algu): tampoc es torna a engegar
execute if score #defeat daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Challenge failed. ", "color": "gray"}, {"text": "[New game]", "color": "gold", "click_event": {"action": "show_dialog", "dialog": "daisukes:new_game"}, "hover_event": {"action": "show_text", "value": "Start the challenge again from zero"}}]
execute if score #defeat daisukes.engine matches 1 run return 0

# Ja esta en marxa: no es toca res
execute if score #engine_active daisukes.engine matches 1 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge is already running", "color": "gray"}]
execute if score #engine_active daisukes.engine matches 1 run return 0

# Sense cap modificador activat al menu no pot comencar (menu/modifiers)
function daisukes:settings/count_enabled
execute if score #enabled daisukes.math matches 0 run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "No modifiers enabled. ", "color": "gray"}, {"text": "[Choose modifiers]", "color": "gold", "click_event": {"action": "run_command", "command": "/trigger daisukes.menu set 3"}, "hover_event": {"action": "show_text", "value": "Open the list of modifiers"}}]
execute if score #enabled daisukes.math matches 0 run return 0

# Primer cop d'aquesta partida (encara no ha avancat gens): presentacio amb el titol Challenge Mode
execute if score #elapsed daisukes.engine matches ..0 run function daisukes:engine/begin

# S'havia aturat amb debug/stop a mitja partida: continua sense titol, amb els mateixos modificadors
# i el mateix temps fins al canvi
execute if score #elapsed daisukes.engine matches 1.. run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge resumed", "color": "gray"}]
execute if score #elapsed daisukes.engine matches 1.. run function daisukes:engine/restore
execute if score #elapsed daisukes.engine matches 1.. run function daisukes:engine/resume
