# dispenser, dropper
$execute if block ~ ~ ~ $(Name)[facing=$(facing),triggered=$(triggered)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),triggered=$(triggered)] strict
return 1
