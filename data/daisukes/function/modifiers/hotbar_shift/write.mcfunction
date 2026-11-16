# Posa x a la casella (si no hi ha x, la deixa buida)
$execute unless data storage daisukes:shift x run return run item replace entity @s $(slot) with air
data modify entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] item set from storage daisukes:shift x
$item replace entity @s $(slot) from entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents
