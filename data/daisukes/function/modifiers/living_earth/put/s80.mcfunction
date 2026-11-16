# end_portal_frame
$execute if block ~ ~ ~ $(Name)[eye=$(eye),facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[eye=$(eye),facing=$(facing)] strict
return 1
