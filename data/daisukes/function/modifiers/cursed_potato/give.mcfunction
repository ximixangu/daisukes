# Macro: {slot: 0..35}. Abans s'usava inventory.0-35, pero inventory.27-35 no existeixen i 1 de cada 4 fallava
$execute unless items entity @s container.$(slot) * run item replace entity @s container.$(slot) with minecraft:magma_cream[minecraft:item_name={"text": "Hot Potato", "color": "red", "bold": true}, minecraft:custom_data={hot_potato: 1b}]
