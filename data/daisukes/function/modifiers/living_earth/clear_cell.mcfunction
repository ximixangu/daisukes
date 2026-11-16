# (si era dins l'aigua, hi torna l'aigua)
execute if predicate {condition: "minecraft:location_check", predicate: {block: {state: {waterlogged: "true"}}}} run return run setblock ~ ~ ~ minecraft:water
setblock ~ ~ ~ minecraft:air
