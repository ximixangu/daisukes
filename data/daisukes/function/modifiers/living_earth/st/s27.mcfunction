# Blocs amb aquestes propietats: large_fern, lilac, peony, pitcher_plant, rose_bush, sunflower...
scoreboard players set #k daisukes.earth 28
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[half=upper] run data modify storage daisukes:earth s.Properties.half set value "upper"
$execute if block ~ ~ ~ $(name)[half=lower] run data modify storage daisukes:earth s.Properties.half set value "lower"
