# Cada tick amb el repte en marxa (al principi d'engine/tick): ha mort el drac de l'End? -> victory/start
#  1. Algu l'ha matat: l'avancament victory/dragon_killed ha posat #slain
#  2. Ha mort sense que cap jugador se n'emporti el merit (llits, /kill...): @e nomes troba entitats vives
#     i el drac que mor es queda a 0 de vida durant l'animacio, aixi que "desapareix" de @e.
#     Mentre hi ha algu viu a menys de 192 blocs del centre de l'End, el joc mante l'illa carregada:
#     si el drac desapareix aleshores, no s'ha descarregat, ha mort.
execute if score #slain daisukes.victory matches 1 run function daisukes:victory/start

execute store result score #arena daisukes.victory in minecraft:the_end if entity @e[type=minecraft:player,x=0,y=128,z=0,distance=..192]
execute store result score #dragons daisukes.victory in minecraft:the_end if entity @e[type=minecraft:ender_dragon,distance=0..]
execute if score #arena daisukes.victory matches 1.. if score #dragons daisukes.victory < #dragons_before daisukes.victory run function daisukes:victory/start

# Nomes es compara amb el tick anterior si ja hi havia algu a l'illa (si no, el drac encara pot estar carregant-se)
scoreboard players set #dragons_before daisukes.victory 0
execute if score #arena daisukes.victory matches 1.. run scoreboard players operation #dragons_before daisukes.victory = #dragons daisukes.victory
