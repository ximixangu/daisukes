# Com a jugador que el servidor ha vist saltar (estadistica): nomes compta si la tecla de saltar es premuda ara o el
# tick d'abans, perque un cop o una explosio que l'aixequen de terra tambe s'apunten com a salt
scoreboard players set @s daisukes.tk_jump 0
execute if predicate daisukes:tank/jump run return run function daisukes:modifiers/tank/mine/detonate
execute if entity @s[tag=daisukes.tk_hop] run function daisukes:modifiers/tank/mine/detonate
