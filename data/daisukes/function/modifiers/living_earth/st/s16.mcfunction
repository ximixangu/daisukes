# Blocs amb aquestes propietats: acacia_pressure_plate, bamboo_pressure_plate, birch_pressure_plate, cherry_pressure_plate, crimson_pressure_plate, dark_oak_pressure_plate...
scoreboard players set #k daisukes.earth 17
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
$execute if block ~ ~ ~ $(name)[powered=false] run data modify storage daisukes:earth s.Properties.powered set value "false"
