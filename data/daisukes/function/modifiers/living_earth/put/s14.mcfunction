# black_banner, blue_banner, brown_banner, cyan_banner, gray_banner, green_banner...
$execute if block ~ ~ ~ $(Name)[rotation=$(rotation)] run return 0
$setblock ~ ~ ~ $(Name)[rotation=$(rotation)] strict
return 1
