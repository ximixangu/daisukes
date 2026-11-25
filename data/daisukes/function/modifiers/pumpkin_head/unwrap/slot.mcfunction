# Macro: {slot}. Com a jugador, amb l'ajudant (ph_tmp) al costat: la carbassa d'aquesta ranura passa a l'ajudant, es
# converteix en el que guardava (si no guardava res, l'ajudant es queda buit) i torna a la ranura
$item replace entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] contents from entity @s $(slot)
data modify entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] item set from entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] item.components."minecraft:custom_data".daisukes_pumpkin.helmet
execute if items entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] contents minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] run item replace entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] contents with minecraft:air
$item replace entity @s $(slot) from entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] contents
