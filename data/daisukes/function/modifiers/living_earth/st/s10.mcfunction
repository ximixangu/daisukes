$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {powered: "false"}}
$execute if block ~ ~ ~ $(name)[powered=true] run data modify storage daisukes:earth s.Properties.powered set value "true"
