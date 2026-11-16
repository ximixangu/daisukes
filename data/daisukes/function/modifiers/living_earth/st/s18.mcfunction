# Blocs amb aquestes propietats: acacia_fence_gate, bamboo_fence_gate, birch_fence_gate, cherry_fence_gate, crimson_fence_gate, dark_oak_fence_gate...
scoreboard players set #k daisukes.earth 19
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[in_wall=true] run data modify storage daisukes:earth s.Properties.in_wall set value "true"
$execute if block ~ ~ ~ $(name)[in_wall=false] run data modify storage daisukes:earth s.Properties.in_wall set value "false"
$execute if block ~ ~ ~ $(name)[open=true] run data modify storage daisukes:earth s.Properties.open set value "true"
$execute if block ~ ~ ~ $(name)[open=false] run data modify storage daisukes:earth s.Properties.open set value "false"
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
