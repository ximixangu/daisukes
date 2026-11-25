# Com a jugador, on es (s'ha acabat el modificador, o torna d'estar desconnectat): la carbassa del cap torna a ser el
# que guardava (o res), i les que tingui a l'inventari tambe. Un item_display ajudant (ph_tmp) fa la feina
execute unless items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] unless items entity @s container.* minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] unless items entity @s weapon.offhand minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] run return 0
execute summon minecraft:item_display run tag @s add daisukes.ph_tmp
execute if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] run function daisukes:modifiers/pumpkin_head/unwrap/slot {slot: "armor.head"}
function daisukes:modifiers/pumpkin_head/unwrap/inventory
kill @n[type=minecraft:item_display,tag=daisukes.ph_tmp]
