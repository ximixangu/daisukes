# Durabilitat màxima de src: es deixa una còpia (la del buffer) a 0 de vida i es mira quin dany té
item modify entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents {function:"minecraft:set_damage",damage:0}
data modify storage daisukes:shift x.components."minecraft:max_damage" set from entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] item.components."minecraft:damage"
data modify storage daisukes:shift x.components."minecraft:damage" set from storage daisukes:shift src.components."minecraft:damage"
data modify storage daisukes:shift x.components."minecraft:max_stack_size" set value 1
