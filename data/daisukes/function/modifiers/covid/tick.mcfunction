# Nomes contagien els mobs: no els objectes, fletxes, barques, vagonetes, displays, markers dels altres
# modificadors... (#daisukes:non_mob). Abans, el propi marker de Backwards o anar en barca donaven wither
execute at @e[type=minecraft:player,gamemode=!spectator] as @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..10] run function daisukes:modifiers/covid/infect

execute as @e[type=minecraft:player,gamemode=!spectator] at @s if entity @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..10] run effect give @s minecraft:nausea 4 0 true
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if entity @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..5] run effect give @s minecraft:wither 4 0 true
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if entity @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..1.5] run effect give @s minecraft:wither 2 3 true
