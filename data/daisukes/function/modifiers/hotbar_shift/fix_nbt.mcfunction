# Arregla un objecte desat a les dades d'una entitat o d'un bloc: el fals fora, el disfressat com era (i el que porti dins, si és un sarró)
data remove storage daisukes:shift x
$data modify storage daisukes:shift x set from $(src) $(path)
$execute if data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.j run return run data remove $(src) $(path)
execute unless data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.d unless data storage daisukes:shift x.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{daisukes_shift:{}}}}] run return 0
function daisukes:modifiers/hotbar_shift/strip
execute if data storage daisukes:shift x.components."minecraft:bundle_contents"[0] run function daisukes:modifiers/hotbar_shift/fix_bundle
$data modify $(src) $(path) set from storage daisukes:shift x
