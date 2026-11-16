# Blocs amb aquestes propietats: black_bed, blue_bed, brown_bed, cyan_bed, gray_bed, green_bed...
scoreboard players set #k daisukes.earth 14
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[occupied=true] run data modify storage daisukes:earth s.Properties.occupied set value "true"
$execute if block ~ ~ ~ $(name)[occupied=false] run data modify storage daisukes:earth s.Properties.occupied set value "false"
$execute if block ~ ~ ~ $(name)[part=head] run data modify storage daisukes:earth s.Properties.part set value "head"
$execute if block ~ ~ ~ $(name)[part=foot] run data modify storage daisukes:earth s.Properties.part set value "foot"
