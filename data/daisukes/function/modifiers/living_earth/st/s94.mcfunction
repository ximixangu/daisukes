# Blocs amb aquestes propietats: big_dripleaf
scoreboard players set #k daisukes.earth 95
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[tilt=none] run data modify storage daisukes:earth s.Properties.tilt set value "none"
$execute if block ~ ~ ~ $(name)[tilt=unstable] run data modify storage daisukes:earth s.Properties.tilt set value "unstable"
$execute if block ~ ~ ~ $(name)[tilt=partial] run data modify storage daisukes:earth s.Properties.tilt set value "partial"
$execute if block ~ ~ ~ $(name)[tilt=full] run data modify storage daisukes:earth s.Properties.tilt set value "full"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
