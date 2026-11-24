# Macro: {slot}. Com a qui duu l'objecte, al costat de l'ajudant: l'objecte passa a l'ajudant, se li treu
# l'item_model (torna al de sempre, i el de dins si es un bundle) i torna a la seva ranura
$item replace entity @n[type=minecraft:item_display,tag=daisukes.cb_tmp] contents from entity @s $(slot)
data remove entity @n[type=minecraft:item_display,tag=daisukes.cb_tmp] item.components."minecraft:item_model"
data remove entity @n[type=minecraft:item_display,tag=daisukes.cb_tmp] item.components."minecraft:bundle_contents"[{components: {"minecraft:item_model": "minecraft:structure_void"}}].components."minecraft:item_model"
$item replace entity @s $(slot) from entity @n[type=minecraft:item_display,tag=daisukes.cb_tmp] contents
