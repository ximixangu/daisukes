# campfire, soul_campfire
$execute if block ~ ~ ~ $(Name)[facing=$(facing),lit=$(lit),signal_fire=$(signal_fire),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),lit=$(lit),signal_fire=$(signal_fire),waterlogged=$(waterlogged)] strict
return 1
