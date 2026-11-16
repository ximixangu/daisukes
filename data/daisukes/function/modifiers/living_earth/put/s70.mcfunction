# sculk_shrieker
$execute if block ~ ~ ~ $(Name)[can_summon=$(can_summon),shrieking=$(shrieking),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[can_summon=$(can_summon),shrieking=$(shrieking),waterlogged=$(waterlogged)] strict
return 1
