# Blocs amb aquestes propietats: black_candle_cake, blue_candle_cake, brown_candle_cake, candle_cake, cyan_candle_cake, deepslate_redstone_ore...
scoreboard players set #k daisukes.earth 11
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[lit=true] run data modify storage daisukes:earth s.Properties.lit set value "true"
$execute if block ~ ~ ~ $(name)[lit=false] run data modify storage daisukes:earth s.Properties.lit set value "false"
