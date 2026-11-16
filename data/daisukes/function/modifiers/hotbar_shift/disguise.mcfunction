# x (l'objecte de veritat, el de T) agafa l'aspecte de a (el de S). Els valors originals es guarden a la marca per desfer-ho.
data modify storage daisukes:shift o set value {}
data modify storage daisukes:shift o.m set from storage daisukes:shift x.components."minecraft:item_model"
data modify storage daisukes:shift o.n set from storage daisukes:shift x.components."minecraft:item_name"
data modify storage daisukes:shift o.cn set from storage daisukes:shift x.components."minecraft:custom_name"
data modify storage daisukes:shift o.g set from storage daisukes:shift x.components."minecraft:enchantment_glint_override"
data modify storage daisukes:shift o.t set from storage daisukes:shift x.components."minecraft:tooltip_display"
data modify storage daisukes:shift o.dc set from storage daisukes:shift x.components."minecraft:dyed_color"
data modify storage daisukes:shift o.c set from storage daisukes:shift x.components."minecraft:custom_data"

# Aspecte de a (si S era buida: mà buida, invisible i sense nom)
data modify storage daisukes:shift look set value {m:"minecraft:air",n:"",g:0b}
data modify storage daisukes:shift src set from storage daisukes:shift a
execute if data storage daisukes:shift a run function daisukes:modifiers/hotbar_shift/look
data modify storage daisukes:shift x.components."minecraft:item_model" set from storage daisukes:shift look.m
data modify storage daisukes:shift x.components."minecraft:item_name" set from storage daisukes:shift look.n
data modify storage daisukes:shift x.components."minecraft:enchantment_glint_override" set from storage daisukes:shift look.g
data modify storage daisukes:shift x.components."minecraft:tooltip_display" set value {hide_tooltip:1b}
data remove storage daisukes:shift x.components."minecraft:dyed_color"
data modify storage daisukes:shift x.components."minecraft:dyed_color" set from storage daisukes:shift a.components."minecraft:dyed_color"

# Pocions, escuts, brúixoles i llibres: el joc en treu el nom del contingut, així que el nom fals va com a custom_name
data modify entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] item set from storage daisukes:shift b
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents #daisukes:hotbar_shift/rename run data modify storage daisukes:shift x.components."minecraft:custom_name" set from storage daisukes:shift look.n
# Color de la poció de S, només si l'objecte de veritat no es menja ni es beu, no es dispara i no té cap efecte propi
execute if data storage daisukes:shift a.components."minecraft:potion_contents" unless items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[consumable] unless items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents #minecraft:arrows unless items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[potion_contents] run function daisukes:modifiers/hotbar_shift/tint

data modify storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift set value {d:1b}
data modify storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.s set from storage daisukes:shift args.s
data modify storage daisukes:shift x.components."minecraft:custom_data".daisukes_shift.o set from storage daisukes:shift o
