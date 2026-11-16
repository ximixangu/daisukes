# light
$execute if block ~ ~ ~ $(Name)[level=$(level),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[level=$(level),waterlogged=$(waterlogged)] strict
return 1
