# large_fern, lilac, peony, pitcher_plant, rose_bush, sunflower...
$execute if block ~ ~ ~ $(Name)[half=$(half)] run return 0
$setblock ~ ~ ~ $(Name)[half=$(half)] strict
return 1
