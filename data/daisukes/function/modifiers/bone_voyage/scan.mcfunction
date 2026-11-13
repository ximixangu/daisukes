# Com el jugador, a la posició candidata.
# Lloc vàlid: aire a peus i al cap, i terra ferm a sota (predicate can_spawn). Va bé a coves, Nether i End.
execute if predicate daisukes:bone_voyage/can_spawn run return run function daisukes:modifiers/bone_voyage/summon

# Si no, baixa un bloc i torna a mirar
scoreboard players remove #steps daisukes.bone_voyage 1
execute if score #steps daisukes.bone_voyage matches 1.. positioned ~ ~-1 ~ run function daisukes:modifiers/bone_voyage/scan
