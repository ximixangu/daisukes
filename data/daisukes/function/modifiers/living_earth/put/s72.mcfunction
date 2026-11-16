# decorated_pot
$execute if block ~ ~ ~ $(Name)[cracked=$(cracked),facing=$(facing),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[cracked=$(cracked),facing=$(facing),waterlogged=$(waterlogged)] strict
return 1
