# piston_head
$execute if block ~ ~ ~ $(Name)[facing=$(facing),short=$(short),type=$(type)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),short=$(short),type=$(type)] strict
return 1
