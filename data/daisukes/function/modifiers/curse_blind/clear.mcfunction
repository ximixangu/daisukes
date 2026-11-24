# Tot el que estigui carregat i sembli un structure void sense ser-ho torna a ser normal: jugadors (inventari, cursor,
# graella, cofre de l'ender), objectes a terra i el que duguin marcs, estaques, allays, maniquins i mobs. El que hagi
# quedat en cofres o en chunks sense carregar torna a ser normal quan torna (leftovers)
execute as @a at @s run function daisukes:modifiers/curse_blind/restore/player
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:item_model="minecraft:structure_void"] unless items entity @s contents minecraft:structure_void run function daisukes:modifiers/curse_blind/restore/ground
execute as @e[type=!minecraft:player,type=!minecraft:item] at @s run function daisukes:modifiers/curse_blind/restore/holder
kill @e[type=minecraft:item_display,tag=daisukes.cb_tmp]
