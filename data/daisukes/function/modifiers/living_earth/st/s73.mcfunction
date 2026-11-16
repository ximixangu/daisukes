# Blocs amb aquestes propietats: crafter
scoreboard players set #k daisukes.earth 74
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[crafting=true] run data modify storage daisukes:earth s.Properties.crafting set value "true"
$execute if block ~ ~ ~ $(name)[crafting=false] run data modify storage daisukes:earth s.Properties.crafting set value "false"
$execute if block ~ ~ ~ $(name)[orientation=down_east] run data modify storage daisukes:earth s.Properties.orientation set value "down_east"
$execute if block ~ ~ ~ $(name)[orientation=down_north] run data modify storage daisukes:earth s.Properties.orientation set value "down_north"
$execute if block ~ ~ ~ $(name)[orientation=down_south] run data modify storage daisukes:earth s.Properties.orientation set value "down_south"
$execute if block ~ ~ ~ $(name)[orientation=down_west] run data modify storage daisukes:earth s.Properties.orientation set value "down_west"
$execute if block ~ ~ ~ $(name)[orientation=up_east] run data modify storage daisukes:earth s.Properties.orientation set value "up_east"
$execute if block ~ ~ ~ $(name)[orientation=up_north] run data modify storage daisukes:earth s.Properties.orientation set value "up_north"
$execute if block ~ ~ ~ $(name)[orientation=up_south] run data modify storage daisukes:earth s.Properties.orientation set value "up_south"
$execute if block ~ ~ ~ $(name)[orientation=up_west] run data modify storage daisukes:earth s.Properties.orientation set value "up_west"
$execute if block ~ ~ ~ $(name)[orientation=west_up] run data modify storage daisukes:earth s.Properties.orientation set value "west_up"
$execute if block ~ ~ ~ $(name)[orientation=east_up] run data modify storage daisukes:earth s.Properties.orientation set value "east_up"
$execute if block ~ ~ ~ $(name)[orientation=north_up] run data modify storage daisukes:earth s.Properties.orientation set value "north_up"
$execute if block ~ ~ ~ $(name)[orientation=south_up] run data modify storage daisukes:earth s.Properties.orientation set value "south_up"
$execute if block ~ ~ ~ $(name)[triggered=true] run data modify storage daisukes:earth s.Properties.triggered set value "true"
$execute if block ~ ~ ~ $(name)[triggered=false] run data modify storage daisukes:earth s.Properties.triggered set value "false"
