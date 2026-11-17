$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {can_summon: "false", shrieking: "false", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[can_summon=true] run data modify storage daisukes:earth s.Properties.can_summon set value "true"
$execute if block ~ ~ ~ $(name)[shrieking=true] run data modify storage daisukes:earth s.Properties.shrieking set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
