execute unless data storage daisukes:shift list[0] run return 0
data modify storage daisukes:shift x set from storage daisukes:shift list[0]
data remove storage daisukes:shift list[0]
# La còpia falsa (també la d'un sarró, que en porta el dibuix): fora
execute if data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.j run return run function daisukes:modifiers/hotbar_shift/fix_list
function daisukes:modifiers/hotbar_shift/strip
execute if data storage daisukes:shift x.components."minecraft:bundle_contents"[0] run function daisukes:modifiers/hotbar_shift/fix_bundle
data modify storage daisukes:shift done append from storage daisukes:shift x
function daisukes:modifiers/hotbar_shift/fix_list
