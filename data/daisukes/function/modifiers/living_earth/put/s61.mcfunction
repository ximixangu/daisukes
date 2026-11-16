# tripwire_hook
$execute if block ~ ~ ~ $(Name)[attached=$(attached),facing=$(facing),powered=$(powered)] run return 0
$setblock ~ ~ ~ $(Name)[attached=$(attached),facing=$(facing),powered=$(powered)] strict
return 1
