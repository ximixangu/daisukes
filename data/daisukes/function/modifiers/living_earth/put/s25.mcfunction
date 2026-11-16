# copper_golem_statue, exposed_copper_golem_statue, oxidized_copper_golem_statue, waxed_copper_golem_statue, waxed_exposed_copper_golem_statue, waxed_oxidized_copper_golem_statue...
$execute if block ~ ~ ~ $(Name)[copper_golem_pose=$(copper_golem_pose),facing=$(facing),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[copper_golem_pose=$(copper_golem_pose),facing=$(facing),waterlogged=$(waterlogged)] strict
return 1
