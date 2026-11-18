# Activa o desactiva el modificador (menu/modifiers/toggle)
scoreboard players set #was_disabled daisukes.math 0
$execute if data storage daisukes:settings disabled.$(id) run scoreboard players set #was_disabled daisukes.math 1
$execute if score #was_disabled daisukes.math matches 1 run data remove storage daisukes:settings disabled.$(id)
$execute if score #was_disabled daisukes.math matches 0 run data modify storage daisukes:settings disabled.$(id) set value 1b

# Amb la partida en marxa: el desactivat surt de la pool (els que encara han de sortir abans de tornar-la a omplir)
# i el que s'activa hi entra, aixi ja pot sortir
$execute if score #was_disabled daisukes.math matches 0 run data remove storage daisukes:temp pool[{id: "$(id)"}]
$execute if score #was_disabled daisukes.math matches 1 if data storage daisukes:temp pool unless data storage daisukes:temp pool[{id: "$(id)"}] run data modify storage daisukes:temp pool append value {id: "$(id)"}
