$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {unstable: "false"}}
$execute if block ~ ~ ~ $(name)[unstable=true] run data modify storage daisukes:earth s.Properties.unstable set value "true"
