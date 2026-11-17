$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {stage: "0"}}
$execute if block ~ ~ ~ $(name)[stage=1] run data modify storage daisukes:earth s.Properties.stage set value "1"
