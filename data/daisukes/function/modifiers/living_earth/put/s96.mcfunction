# jukebox
$execute if block ~ ~ ~ $(Name)[has_record=$(has_record)] run return 0
$setblock ~ ~ ~ $(Name)[has_record=$(has_record)] strict
return 1
