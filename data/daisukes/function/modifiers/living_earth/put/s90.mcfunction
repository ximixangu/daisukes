# vault
$execute if block ~ ~ ~ $(Name)[facing=$(facing),ominous=$(ominous),vault_state=$(vault_state)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),ominous=$(ominous),vault_state=$(vault_state)] strict
return 1
