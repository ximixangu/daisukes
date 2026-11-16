# Blocs amb aquestes propietats: copper_golem_statue, exposed_copper_golem_statue, oxidized_copper_golem_statue, waxed_copper_golem_statue, waxed_exposed_copper_golem_statue, waxed_oxidized_copper_golem_statue...
scoreboard players set #k daisukes.earth 26
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[copper_golem_pose=standing] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "standing"
$execute if block ~ ~ ~ $(name)[copper_golem_pose=sitting] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "sitting"
$execute if block ~ ~ ~ $(name)[copper_golem_pose=running] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "running"
$execute if block ~ ~ ~ $(name)[copper_golem_pose=star] run data modify storage daisukes:earth s.Properties.copper_golem_pose set value "star"
$execute if block ~ ~ ~ $(name)[facing=north] run data modify storage daisukes:earth s.Properties.facing set value "north"
$execute if block ~ ~ ~ $(name)[facing=south] run data modify storage daisukes:earth s.Properties.facing set value "south"
$execute if block ~ ~ ~ $(name)[facing=west] run data modify storage daisukes:earth s.Properties.facing set value "west"
$execute if block ~ ~ ~ $(name)[facing=east] run data modify storage daisukes:earth s.Properties.facing set value "east"
$execute if block ~ ~ ~ $(name)[waterlogged=true] run data modify storage daisukes:earth s.Properties.waterlogged set value "true"
$execute if block ~ ~ ~ $(name)[waterlogged=false] run data modify storage daisukes:earth s.Properties.waterlogged set value "false"
