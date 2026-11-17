$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {tip: "true"}}
$execute if block ~ ~ ~ $(name)[tip=false] run data modify storage daisukes:earth s.Properties.tip set value "false"
