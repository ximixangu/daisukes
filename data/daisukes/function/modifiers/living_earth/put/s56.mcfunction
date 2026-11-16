# mangrove_propagule
$execute if block ~ ~ ~ $(Name)[age=$(age),hanging=$(hanging),stage=$(stage),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[age=$(age),hanging=$(hanging),stage=$(stage),waterlogged=$(waterlogged)] strict
return 1
