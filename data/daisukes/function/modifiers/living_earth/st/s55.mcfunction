$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {copper_golem_pose: "standing", facing: "north", waterlogged: "false"}}
$execute if block ~ ~ ~ $(name)[copper_golem_pose=sitting] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "sitting"
$execute if block ~ ~ ~ $(name)[copper_golem_pose=running] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "running"
$execute if block ~ ~ ~ $(name)[copper_golem_pose=star] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "star"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
