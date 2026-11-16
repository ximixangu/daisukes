# Blocs amb aquestes propietats: bee_nest, beehive
scoreboard players set #k daisukes.earth 49
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[honey_level=0] run data modify storage daisukes:earth s.Properties.honey_level set value "0"
$execute if block ~ ~ ~ $(name)[honey_level=1] run data modify storage daisukes:earth s.Properties.honey_level set value "1"
$execute if block ~ ~ ~ $(name)[honey_level=2] run data modify storage daisukes:earth s.Properties.honey_level set value "2"
$execute if block ~ ~ ~ $(name)[honey_level=3] run data modify storage daisukes:earth s.Properties.honey_level set value "3"
$execute if block ~ ~ ~ $(name)[honey_level=4] run data modify storage daisukes:earth s.Properties.honey_level set value "4"
$execute if block ~ ~ ~ $(name)[honey_level=5] run data modify storage daisukes:earth s.Properties.honey_level set value "5"
