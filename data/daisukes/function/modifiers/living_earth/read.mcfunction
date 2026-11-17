$execute in minecraft:overworld positioned $(px) -47 29999008 run function daisukes:modifiers/living_earth/st/find
data remove storage daisukes:earth ghost
$execute in minecraft:overworld positioned $(px) -47 29999008 if block ~ ~ ~ #daisukes:living_earth/ghost run data modify storage daisukes:earth ghost set value 1b
