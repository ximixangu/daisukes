# barrel
$execute if block ~ ~ ~ $(Name)[facing=$(facing),open=$(open)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),open=$(open)] strict
return 1
