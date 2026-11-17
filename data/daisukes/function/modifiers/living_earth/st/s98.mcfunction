$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {bloom: "false"}}
$execute if block ~ ~ ~ $(name)[bloom=true] run data modify storage daisukes:earth s.Properties.bloom set value "true"
