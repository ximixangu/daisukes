# test_block
$execute if block ~ ~ ~ $(Name)[mode=$(mode)] run return 0
$setblock ~ ~ ~ $(Name)[mode=$(mode)] strict
return 1
