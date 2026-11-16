# Blocs amb aquestes propietats: black_candle, blue_candle, brown_candle, candle, cyan_candle, gray_candle...
scoreboard players set #k daisukes.earth 13
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[candles=1] run data modify storage daisukes:earth s.Properties.candles set value "1"
$execute if block ~ ~ ~ $(name)[candles=2] run data modify storage daisukes:earth s.Properties.candles set value "2"
$execute if block ~ ~ ~ $(name)[candles=3] run data modify storage daisukes:earth s.Properties.candles set value "3"
$execute if block ~ ~ ~ $(name)[candles=4] run data modify storage daisukes:earth s.Properties.candles set value "4"
$execute if block ~ ~ ~ $(name)[lit=true] run data modify storage daisukes:earth s.Properties.lit set value "true"
$execute if block ~ ~ ~ $(name)[lit=false] run data modify storage daisukes:earth s.Properties.lit set value "false"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
