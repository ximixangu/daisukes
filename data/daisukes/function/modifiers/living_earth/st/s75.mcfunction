$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {half: "lower"}}
$execute if block ~ ~ ~ $(name)[half=upper] run data modify storage daisukes:earth s.Properties.half set value "upper"
