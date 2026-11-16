# dried_ghast
$execute if block ~ ~ ~ $(Name)[facing=$(facing),hydration=$(hydration),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),hydration=$(hydration),waterlogged=$(waterlogged)] strict
return 1
