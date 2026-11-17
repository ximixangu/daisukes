$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {snowy: "false"}}
$execute if block ~ ~ ~ $(name)[snowy=true] run data modify storage daisukes:earth s.Properties.snowy set value "true"
