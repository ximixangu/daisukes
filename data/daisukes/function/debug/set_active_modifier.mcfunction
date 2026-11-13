# Funció per triar el modificador (dura 2 minuts i despres tot segueix normal):
# /function daisukes:debug/set_active_modifier {active: "x"}

function daisukes:engine/deactivate_execute

data remove storage daisukes:state active
$data modify storage daisukes:state active append value $(active)
data remove storage daisukes:temp display_texts
$data modify storage daisukes:temp display_texts append from storage daisukes:texts map.$(active)

# El seguent canvi arriba d'aqui a 2 minuts (2400 ticks), sense tocar l'interval ni el nombre de modificadors
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 2400

function daisukes:engine/activate_execute
