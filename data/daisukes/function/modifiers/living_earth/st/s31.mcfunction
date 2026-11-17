$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {lit: "false"}}
$execute if block ~ ~ ~ $(name)[lit=true] run data modify storage daisukes:earth s.Properties.lit set value "true"
