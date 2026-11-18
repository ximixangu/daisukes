# Quants modificadors poden sortir (#enabled) de tots els registrats (#total): els que no s'han desactivat al menu
# (daisukes:settings disabled). Ho fan servir start, menu/start i menu/modifiers/announce
scoreboard players set #enabled daisukes.math 0
execute store result score #total daisukes.math run data get storage daisukes:registry modifiers
data modify storage daisukes:temp count_queue set from storage daisukes:registry modifiers
execute if data storage daisukes:temp count_queue[0] run function daisukes:settings/count_enabled_loop
