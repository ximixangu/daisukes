# moving_piston
$execute if block ~ ~ ~ $(Name)[facing=$(facing),type=$(type)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),type=$(type)] strict
return 1
