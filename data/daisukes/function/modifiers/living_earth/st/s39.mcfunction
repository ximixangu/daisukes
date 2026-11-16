# Blocs amb aquestes propietats: glow_lichen, resin_clump, sculk_vein
scoreboard players set #k daisukes.earth 40
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[down=true] run data modify storage daisukes:earth s.Properties.down set value "true"
$execute if block ~ ~ ~ $(name)[down=false] run data modify storage daisukes:earth s.Properties.down set value "false"
$execute if block ~ ~ ~ $(name)[east=true] run data modify storage daisukes:earth s.Properties.east set value "true"
$execute if block ~ ~ ~ $(name)[east=false] run data modify storage daisukes:earth s.Properties.east set value "false"
$execute if block ~ ~ ~ $(name)[north=true] run data modify storage daisukes:earth s.Properties.north set value "true"
$execute if block ~ ~ ~ $(name)[north=false] run data modify storage daisukes:earth s.Properties.north set value "false"
$execute if block ~ ~ ~ $(name)[south=true] run data modify storage daisukes:earth s.Properties.south set value "true"
$execute if block ~ ~ ~ $(name)[south=false] run data modify storage daisukes:earth s.Properties.south set value "false"
$execute if block ~ ~ ~ $(name)[up=true] run data modify storage daisukes:earth s.Properties.up set value "true"
$execute if block ~ ~ ~ $(name)[up=false] run data modify storage daisukes:earth s.Properties.up set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
$execute if block ~ ~ ~ $(name)[west=true] run data modify storage daisukes:earth s.Properties.west set value "true"
$execute if block ~ ~ ~ $(name)[west=false] run data modify storage daisukes:earth s.Properties.west set value "false"
