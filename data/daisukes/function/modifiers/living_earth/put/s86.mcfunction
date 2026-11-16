# small_dripleaf
$execute if block ~ ~ ~ $(Name)[facing=$(facing),half=$(half),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),half=$(half),waterlogged=$(waterlogged)] strict
return 1
