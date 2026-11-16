# acacia_sapling, birch_sapling, cherry_sapling, dark_oak_sapling, jungle_sapling, oak_sapling...
$execute if block ~ ~ ~ $(Name)[stage=$(stage)] run return 0
$setblock ~ ~ ~ $(Name)[stage=$(stage)] strict
return 1
