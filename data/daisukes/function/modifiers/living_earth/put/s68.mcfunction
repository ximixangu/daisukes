# scaffolding
$execute if block ~ ~ ~ $(Name)[bottom=$(bottom),distance=$(distance),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[bottom=$(bottom),distance=$(distance),waterlogged=$(waterlogged)] strict
return 1
