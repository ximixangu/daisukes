# Com a jugador, als peus d'on es quedara. Si nomes ho comprovava (ja hi es caminant), d'acord
execute if score #probe daisukes.ender_step matches 1 run return run scoreboard players set #done daisukes.ender_step 1

# Hi ha de caber el cap
execute positioned ~ ~1 ~ unless predicate daisukes:ender_step/open run return 0

# Hi salta (sense girar-li la vista)
scoreboard players set #done daisukes.ender_step 1
tp @s ~ ~ ~
