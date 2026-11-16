# Copia l'objecte de la casella a x
data remove storage daisukes:shift x
$item replace entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents from entity @s $(slot)
data modify storage daisukes:shift x set from entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] item
