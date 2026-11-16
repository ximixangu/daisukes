# farmland
$execute if block ~ ~ ~ $(Name)[moisture=$(moisture)] run return 0
$setblock ~ ~ ~ $(Name)[moisture=$(moisture)] strict
return 1
