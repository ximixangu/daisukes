# Còpia falsa de src: un bloc de comandes que no fa res però es veu igual (model, nom, quantitat, colors i durabilitat)
function daisukes:modifiers/hotbar_shift/look
data modify storage daisukes:shift x set value {id:"minecraft:command_block",count:1,components:{"minecraft:max_stack_size":99,"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:custom_data":{daisukes_shift:{j:1b}}}}
data modify storage daisukes:shift x.count set from storage daisukes:shift src.count
data modify storage daisukes:shift x.components."minecraft:item_model" set from storage daisukes:shift look.m
data modify storage daisukes:shift x.components."minecraft:item_name" set from storage daisukes:shift look.n
data modify storage daisukes:shift x.components."minecraft:enchantment_glint_override" set from storage daisukes:shift look.g

# Colors i dibuixos (pocions, cuir tenyit, estendards, caps, focs...): en un bloc de comandes no fan res
data modify storage daisukes:shift x.components."minecraft:potion_contents" set from storage daisukes:shift src.components."minecraft:potion_contents"
data modify storage daisukes:shift x.components."minecraft:dyed_color" set from storage daisukes:shift src.components."minecraft:dyed_color"
data modify storage daisukes:shift x.components."minecraft:profile" set from storage daisukes:shift src.components."minecraft:profile"
data modify storage daisukes:shift x.components."minecraft:banner_patterns" set from storage daisukes:shift src.components."minecraft:banner_patterns"
data modify storage daisukes:shift x.components."minecraft:base_color" set from storage daisukes:shift src.components."minecraft:base_color"
data modify storage daisukes:shift x.components."minecraft:firework_explosion" set from storage daisukes:shift src.components."minecraft:firework_explosion"
data modify storage daisukes:shift x.components."minecraft:trim" set from storage daisukes:shift src.components."minecraft:trim"
data modify storage daisukes:shift x.components."minecraft:map_color" set from storage daisukes:shift src.components."minecraft:map_color"
data modify storage daisukes:shift x.components."minecraft:custom_model_data" set from storage daisukes:shift src.components."minecraft:custom_model_data"
data modify storage daisukes:shift x.components."minecraft:charged_projectiles" set from storage daisukes:shift src.components."minecraft:charged_projectiles"
data modify storage daisukes:shift x.components."minecraft:pot_decorations" set from storage daisukes:shift src.components."minecraft:pot_decorations"
data modify storage daisukes:shift x.components."minecraft:bundle_contents" set from storage daisukes:shift src.components."minecraft:bundle_contents"

# Barra de durabilitat
execute if data storage daisukes:shift src.components."minecraft:damage" unless data storage daisukes:shift src.components."minecraft:unbreakable" run function daisukes:modifiers/hotbar_shift/fake_bar
