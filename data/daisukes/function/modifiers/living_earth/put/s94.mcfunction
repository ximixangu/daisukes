# big_dripleaf
$execute if block ~ ~ ~ $(Name)[facing=$(facing),tilt=$(tilt),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),tilt=$(tilt),waterlogged=$(waterlogged)] strict
return 1
