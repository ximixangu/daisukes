$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {axis: "y"}}
$execute if block ~ ~ ~ $(name)[axis=x] run data modify storage daisukes:earth s.Properties.axis set value "x"
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
