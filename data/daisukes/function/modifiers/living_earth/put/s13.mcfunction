# black_bed, blue_bed, brown_bed, cyan_bed, gray_bed, green_bed...
$execute if block ~ ~ ~ $(Name)[facing=$(facing),occupied=$(occupied),part=$(part)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),occupied=$(occupied),part=$(part)] strict
return 1
