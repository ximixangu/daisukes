title @a times 5t 3s 2s
title @a subtitle {"text": "Daisuke's", "color": "dark_red"}
title @a title {"text": "Challenge Mode", "color": "red"}

execute if data storage daisukes:state active[0] run function daisukes:engine/deactivate_execute

data modify storage daisukes:registry modifiers set value []

function #daisukes:register

data merge storage daisukes:config {count: 1}

function daisukes:engine/select_modifiers

scoreboard objectives add daisukes.timer dummy
scoreboard objectives add daisukes.engine dummy
scoreboard objectives add daisukes.math dummy

scoreboard players set #engine_active daisukes.engine 1
scoreboard players set #timer daisukes.timer 0

function daisukes:engine/activate_execute
