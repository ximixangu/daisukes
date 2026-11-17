$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {thickness: "tip", vertical_direction: "up", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[thickness=tip_merge] run data modify storage daisukes:earth s.Properties.thickness set value "tip_merge"
$execute if block ~ ~ ~ $(name)[thickness=frustum] run data modify storage daisukes:earth s.Properties.thickness set value "frustum"
$execute if block ~ ~ ~ $(name)[thickness=middle] run data modify storage daisukes:earth s.Properties.thickness set value "middle"
$execute if block ~ ~ ~ $(name)[thickness=base] run data modify storage daisukes:earth s.Properties.thickness set value "base"
$execute if block ~ ~ ~ $(name)[vertical_direction=down] run data modify storage daisukes:earth s.Properties.vertical_direction set value "down"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
