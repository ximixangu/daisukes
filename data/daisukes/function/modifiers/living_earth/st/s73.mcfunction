$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {has_record: "false"}}
$execute if block ~ ~ ~ $(name)[has_record=true] run data modify storage daisukes:earth s.Properties.has_record set value "true"
