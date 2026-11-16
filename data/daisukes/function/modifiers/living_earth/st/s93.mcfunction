# Blocs amb aquestes propietats: chiseled_bookshelf
scoreboard players set #k daisukes.earth 94
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[slot_0_occupied=true] run data modify storage daisukes:earth s.Properties.slot_0_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_0_occupied=false] run data modify storage daisukes:earth s.Properties.slot_0_occupied set value "false"
$execute if block ~ ~ ~ $(name)[slot_1_occupied=true] run data modify storage daisukes:earth s.Properties.slot_1_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_1_occupied=false] run data modify storage daisukes:earth s.Properties.slot_1_occupied set value "false"
$execute if block ~ ~ ~ $(name)[slot_2_occupied=true] run data modify storage daisukes:earth s.Properties.slot_2_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_2_occupied=false] run data modify storage daisukes:earth s.Properties.slot_2_occupied set value "false"
$execute if block ~ ~ ~ $(name)[slot_3_occupied=true] run data modify storage daisukes:earth s.Properties.slot_3_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_3_occupied=false] run data modify storage daisukes:earth s.Properties.slot_3_occupied set value "false"
$execute if block ~ ~ ~ $(name)[slot_4_occupied=true] run data modify storage daisukes:earth s.Properties.slot_4_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_4_occupied=false] run data modify storage daisukes:earth s.Properties.slot_4_occupied set value "false"
$execute if block ~ ~ ~ $(name)[slot_5_occupied=true] run data modify storage daisukes:earth s.Properties.slot_5_occupied set value "true"
$execute if block ~ ~ ~ $(name)[slot_5_occupied=false] run data modify storage daisukes:earth s.Properties.slot_5_occupied set value "false"
