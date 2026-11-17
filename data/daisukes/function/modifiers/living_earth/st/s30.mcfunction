$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {candles: "1", lit: "false", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[candles=2] run data modify storage daisukes:earth s.Properties.candles set value "2"
$execute if block ~ ~ ~ $(name)[candles=3] run data modify storage daisukes:earth s.Properties.candles set value "3"
$execute if block ~ ~ ~ $(name)[candles=4] run data modify storage daisukes:earth s.Properties.candles set value "4"
$execute if block ~ ~ ~ $(name)[lit=true] run data modify storage daisukes:earth s.Properties.lit set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
