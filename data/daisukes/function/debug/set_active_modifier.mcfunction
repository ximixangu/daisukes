# Funció per triar el modificador:
# /function daisukes:debug/set_active_modifier {active: "x"}

function daisukes:engine/deactivate_execute

data merge storage daisukes:config {count: 1}
data remove storage daisukes:state active
$data modify storage daisukes:state active append value $(active)
data remove storage daisukes:temp display_texts
$data modify storage daisukes:temp display_texts append from storage daisukes:texts map.$(active)

scoreboard players set #timer_threshold daisukes.timer 2400

function daisukes:engine/activate_execute