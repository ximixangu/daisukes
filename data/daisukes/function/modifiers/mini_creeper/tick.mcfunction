# Cada mob nou porta un marker a sobre. Nomes mobs: ni objectes, fletxes, vehicles, displays dels altres
# modificadors... (#daisukes:non_mob), ni cavalls, porcs, camells... (#daisukes:rideable), que amb el marker
# a sobre ja no es podien muntar
execute as @e[type=!minecraft:player,type=!#daisukes:non_mob,type=!#daisukes:rideable,tag=!daisukes.creeper_host] run function daisukes:modifiers/mini_creeper/mark

# Cada mig segon (l'animacio de morir dura 1 s, no se n'escapa cap): els mobs que s'estan morint
# deixen anar el creeper, i els markers que s'han quedat sense mob (ha desaparegut, s'ha convertit...) fora
scoreboard players add #timer daisukes.mini_creeper 1
execute if score #timer daisukes.mini_creeper matches 10.. run function daisukes:modifiers/mini_creeper/check
