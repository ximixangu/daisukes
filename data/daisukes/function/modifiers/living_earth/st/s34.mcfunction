$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {waterlogged: "true"}}
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
