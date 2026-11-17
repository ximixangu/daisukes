$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {mode: "start"}}
$execute if block ~ ~ ~ $(name)[mode=log] run data modify storage daisukes:earth s.Properties.mode set value "log"
$execute if block ~ ~ ~ $(name)[mode=fail] run data modify storage daisukes:earth s.Properties.mode set value "fail"
$execute if block ~ ~ ~ $(name)[mode=accept] run data modify storage daisukes:earth s.Properties.mode set value "accept"
