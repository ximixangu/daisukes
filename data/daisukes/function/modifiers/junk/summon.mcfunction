# Brossa a l'atzar (loot_table/junk/items) que surt de terra fent un saltiro. Dura 30 s (Age 5400 de 6000).
# Es crea amb pedra i se li posa la brossa de seguida (com item_drop)
summon minecraft:item ~ ~0.1 ~ {Tags: ["daisukes.junk", "daisukes.junk_new"], Age: 5400s, PickupDelay: 10s, Motion: [0.0d, 0.25d, 0.0d], Item: {id: "minecraft:stone", count: 1}}
loot replace entity @n[type=minecraft:item,tag=daisukes.junk_new] contents loot daisukes:junk/items
tag @n[type=minecraft:item,tag=daisukes.junk_new] remove daisukes.junk_new
particle minecraft:poof ~ ~0.3 ~ 0.15 0.1 0.15 0.01 3 normal
