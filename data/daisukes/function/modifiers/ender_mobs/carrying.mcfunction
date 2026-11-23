# Com a mob: torna 1 si porta a sobre un jugador o un mob (els markers i altres entitats dels modificadors, no)
execute on passengers unless entity @s[type=#daisukes:non_mob] run return 1
return fail
