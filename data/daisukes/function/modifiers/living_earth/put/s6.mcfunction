# barrier, brain_coral, brain_coral_fan, bubble_coral, bubble_coral_fan, conduit...
$execute if block ~ ~ ~ $(Name)[waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[waterlogged=$(waterlogged)] strict
return 1
