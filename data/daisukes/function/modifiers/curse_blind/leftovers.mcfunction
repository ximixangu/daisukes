# Cada segon (core/leftovers), si Curse of the Blind no es actiu: el que torna amb aspecte de structure void sense
# ser-ho (jugadors que estaven desconnectats, objectes que algu treu d'un cofre o que eren en un chunk sense carregar)
execute if data storage daisukes:state {active: ["curse_blind"]} run return 0
execute as @a at @s run function daisukes:modifiers/curse_blind/restore/player
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:item_model="minecraft:structure_void"] unless items entity @s contents minecraft:structure_void run function daisukes:modifiers/curse_blind/restore/ground
execute as @e[type=#daisukes:curse_blind/holders] at @s run function daisukes:modifiers/curse_blind/restore/holder
kill @e[type=minecraft:item_display,tag=daisukes.cb_tmp]
