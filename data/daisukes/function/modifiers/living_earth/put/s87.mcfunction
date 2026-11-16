# lectern
$execute if block ~ ~ ~ $(Name)[facing=$(facing),has_book=$(has_book),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),has_book=$(has_book),powered=$(powered)] strict
return 1
