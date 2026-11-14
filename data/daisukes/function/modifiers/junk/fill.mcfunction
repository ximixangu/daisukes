# Macro: {slot: 0..35}. Com a jugador: si la ranura es buida hi posa brossa (loot_table/junk/items) i torna 1; si no, 0
$execute if items entity @s container.$(slot) * run return 0
$loot replace entity @s container.$(slot) loot daisukes:junk/items
return 1
