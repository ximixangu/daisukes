# rail
$execute if block ~ ~ ~ $(Name)[shape=$(shape),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[shape=$(shape),waterlogged=$(waterlogged)] strict
return 1
