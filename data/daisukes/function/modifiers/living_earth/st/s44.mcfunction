$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {berries: "false"}}
$execute if block ~ ~ ~ $(name)[berries=true] run data modify storage daisukes:earth s.Properties.berries set value "true"
