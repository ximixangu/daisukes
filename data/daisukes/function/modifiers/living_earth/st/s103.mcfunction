$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {hatch: "0"}}
$execute if block ~ ~ ~ $(name)[hatch=1] run data modify storage daisukes:earth s.Properties.hatch set value "1"
$execute if block ~ ~ ~ $(name)[hatch=2] run data modify storage daisukes:earth s.Properties.hatch set value "2"
