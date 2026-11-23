# Com a mob: torna 1 si el seu darrer atacant es el jugador del cop (etiqueta em_me)
execute on attacker if entity @s[tag=daisukes.em_me] run return 1
return fail
