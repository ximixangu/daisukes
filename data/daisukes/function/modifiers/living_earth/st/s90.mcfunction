$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {level: "1"}}
$execute if block ~ ~ ~ $(name)[level=2] run data modify storage daisukes:earth s.Properties.level set value "2"
$execute if block ~ ~ ~ $(name)[level=3] run data modify storage daisukes:earth s.Properties.level set value "3"
