$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {lit: "true"}}
$execute if block ~ ~ ~ $(name)[lit=false] run data modify storage daisukes:earth s.Properties.lit set value "false"
