# black_shulker_box, blue_shulker_box, brown_shulker_box, cyan_shulker_box, end_rod, gray_shulker_box...
$execute if block ~ ~ ~ $(Name)[facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing)] strict
return 1
