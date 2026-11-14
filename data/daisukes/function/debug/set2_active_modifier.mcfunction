# Activa dos modificadors alhora per veure com funcionen junts (duren 2 minuts i despres tot segueix normal):
# /function daisukes:debug/set_active_modifiers {a: "hush", b: "jeb"}

# Comprovacions: que existeixin i que no siguin el mateix
$execute unless data storage daisukes:registry {modifiers: ["$(a)"]} run return run tellraw @a ["", {"text": "Unknown modifier: ", "color": "red"}, {"text": "$(a)", "color": "white"}]
$execute unless data storage daisukes:registry {modifiers: ["$(b)"]} run return run tellraw @a ["", {"text": "Unknown modifier: ", "color": "red"}, {"text": "$(b)", "color": "white"}]
$data modify storage daisukes:temp debug_pair set value "$(a)"
$execute if data storage daisukes:temp {debug_pair: "$(b)"} run return run tellraw @a {"text": "Pick two different modifiers", "color": "red"}

# Si son incompatibles, avisa pero els activa igualment (per poder-ho veure)
$execute if data storage daisukes:registry conflicts.$(a)[{id: "$(b)"}] run tellraw @a ["", {"text": "Warning: ", "color": "gold"}, {"text": "$(a)", "color": "white"}, {"text": " and ", "color": "gray"}, {"text": "$(b)", "color": "white"}, {"text": " are incompatible (running them anyway)", "color": "gray"}]

function daisukes:engine/deactivate_execute

data remove storage daisukes:state active
$data modify storage daisukes:state active append value "$(a)"
$data modify storage daisukes:state active append value "$(b)"
data remove storage daisukes:temp display_texts
$data modify storage daisukes:temp display_texts append from storage daisukes:texts map.$(a)
$data modify storage daisukes:temp display_texts append from storage daisukes:texts map.$(b)

# El seguent canvi arriba d'aqui a 2 minuts (2400 ticks), sense tocar l'interval ni el nombre de modificadors
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 2400

# Si el motor estava aturat (debug/stop), el torna a engegar
scoreboard players set #engine_active daisukes.engine 1
function daisukes:engine/activate_execute

# So del canvi i la bossbar ensenya els dos modificadors 3 segons
function daisukes:engine/countdown/end
