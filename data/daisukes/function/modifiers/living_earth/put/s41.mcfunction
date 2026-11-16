# activator_rail, detector_rail, powered_rail
$execute if block ~ ~ ~ $(Name)[powered=$(powered),shape=$(shape),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[powered=$(powered),shape=$(shape),waterlogged=$(waterlogged)] strict
return 1
