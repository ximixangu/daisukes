# copper_bulb, exposed_copper_bulb, oxidized_copper_bulb, waxed_copper_bulb, waxed_exposed_copper_bulb, waxed_oxidized_copper_bulb...
$execute if block ~ ~ ~ $(Name)[lit=$(lit),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[lit=$(lit),powered=$(powered)] strict
return 1
