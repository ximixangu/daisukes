execute unless data storage daisukes:shift list[0] run return 0
data modify storage daisukes:shift x set from storage daisukes:shift list[0]
data remove storage daisukes:shift list[0]
function daisukes:modifiers/hotbar_shift/strip
execute unless data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.j run data modify storage daisukes:shift done append from storage daisukes:shift x
function daisukes:modifiers/hotbar_shift/fix_list
