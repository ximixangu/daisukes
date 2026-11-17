$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {axis: "x"}}
$execute if block ~ ~ ~ $(name)[axis=z] run data modify storage daisukes:earth s.Properties.axis set value "z"
