# respawn_anchor
$execute if block ~ ~ ~ $(Name)[charges=$(charges)] run return 0
$setblock ~ ~ ~ $(Name)[charges=$(charges)] strict
return 1
