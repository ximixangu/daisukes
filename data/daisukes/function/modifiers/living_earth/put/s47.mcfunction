# pink_petals, wildflowers
$execute if block ~ ~ ~ $(Name)[facing=$(facing),flower_amount=$(flower_amount)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),flower_amount=$(flower_amount)] strict
return 1
