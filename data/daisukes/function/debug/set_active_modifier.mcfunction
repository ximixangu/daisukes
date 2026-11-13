# Funció per triar el modificador (dura 2 minuts i despres tot segueix normal):
# /function daisukes:debug/set_active_modifier {active: "x"}

# Nom que no es de cap modificador registrat: avis i no es toca res
$execute unless data storage daisukes:registry {modifiers: ["$(active)"]} run return run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Unknown modifier: ", "color": "gray"}, {"text": "$(active)", "color": "yellow"}]

function daisukes:engine/deactivate_execute

data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts
$data modify storage daisukes:state active append value "$(active)"
$function daisukes:engine/append_text {key: "$(active)"}

# El seguent canvi arriba d'aqui a 2 minuts (2400 ticks), sense tocar l'interval ni el nombre de modificadors
# (si el repte estava aturat amb debug/stop, torna a anar)
scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #intro daisukes.engine 0
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 2400

function daisukes:engine/activate_execute

# Com un canvi normal: so, bossbar i avis al xat
data modify storage daisukes:temp countdown_label set value "Modifier change in "
function daisukes:engine/countdown/end
tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Now active: ", "color": "gray"}, {"nbt": "chat_texts[]", "storage": "daisukes:temp", "interpret": true, "separator": {"text": ", ", "color": "gray"}}, {"text": "  (hover for details)", "color": "dark_gray", "italic": true}]
