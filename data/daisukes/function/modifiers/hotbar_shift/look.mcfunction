# Aspecte de src: model, nom i brillantor. src es posa al buffer per poder-ne mirar el tipus.
data modify entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] item set from storage daisukes:shift src
data modify storage daisukes:shift look set value {g:0b}
data modify storage daisukes:shift look.m set from storage daisukes:shift src.id
data modify storage daisukes:shift look.m set from storage daisukes:shift src.components."minecraft:item_model"
# Brilla si està encantat, si és una brúixola d'imant o si ho diu el mateix objecte
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[enchantments~[{}]] run data modify storage daisukes:shift look.g set value 1b
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents minecraft:compass[lodestone_tracker] run data modify storage daisukes:shift look.g set value 1b
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[enchantment_glint_override=true] run data modify storage daisukes:shift look.g set value 1b
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[enchantment_glint_override=false] run data modify storage daisukes:shift look.g set value 0b
function daisukes:modifiers/hotbar_shift/name
