$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {dusted: "0"}}
$execute if block ~ ~ ~ $(name)[dusted=1] run data modify storage daisukes:earth s.Properties.dusted set value "1"
$execute if block ~ ~ ~ $(name)[dusted=2] run data modify storage daisukes:earth s.Properties.dusted set value "2"
$execute if block ~ ~ ~ $(name)[dusted=3] run data modify storage daisukes:earth s.Properties.dusted set value "3"
