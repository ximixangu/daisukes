advancement revoke @s only daisukes:hotbar_shift/place
execute unless predicate daisukes:hotbar_shift/active run return 0
# El bloc que acaba de posar (o on ha ficat l'objecte) és el primer que té davant dels ulls
scoreboard players set #ray daisukes.shift 120
execute at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/hotbar_shift/ray
