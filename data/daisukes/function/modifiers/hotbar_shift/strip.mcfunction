# Treu la disfressa de x amb els valors guardats a la marca
execute unless data storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.d run return 0
data modify storage daisukes:shift o set from storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.o
data remove storage daisukes:shift x.components."minecraft:item_model"
data remove storage daisukes:shift x.components."minecraft:item_name"
data remove storage daisukes:shift x.components."minecraft:custom_name"
data remove storage daisukes:shift x.components."minecraft:enchantment_glint_override"
data remove storage daisukes:shift x.components."minecraft:tooltip_display"
data remove storage daisukes:shift x.components."minecraft:dyed_color"
data remove storage daisukes:shift x.components."minecraft:custom_data"
execute if data storage daisukes:shift o.p run data remove storage daisukes:shift x.components."minecraft:potion_contents"
data modify storage daisukes:shift x.components."minecraft:item_model" set from storage daisukes:shift o.m
data modify storage daisukes:shift x.components."minecraft:item_name" set from storage daisukes:shift o.n
data modify storage daisukes:shift x.components."minecraft:custom_name" set from storage daisukes:shift o.cn
data modify storage daisukes:shift x.components."minecraft:enchantment_glint_override" set from storage daisukes:shift o.g
data modify storage daisukes:shift x.components."minecraft:tooltip_display" set from storage daisukes:shift o.t
data modify storage daisukes:shift x.components."minecraft:dyed_color" set from storage daisukes:shift o.dc
data modify storage daisukes:shift x.components."minecraft:custom_data" set from storage daisukes:shift o.c
