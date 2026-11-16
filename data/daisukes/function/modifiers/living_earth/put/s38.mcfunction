# chain_command_block, command_block, repeating_command_block
$execute if block ~ ~ ~ $(Name)[conditional=$(conditional),facing=$(facing)] run return 0
$setblock ~ ~ ~ $(Name)[conditional=$(conditional),facing=$(facing)] strict
return 1
