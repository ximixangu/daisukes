# Fora etiquetes i valors dels mobs carregats. Els d'un chunk que no ho era es queden les etiquetes: no fan res, i
# si torna a sortir el modificador, tidy les treu als que son lluny
execute as @e[tag=daisukes.em_mob] run function daisukes:modifiers/ender_mobs/untrack
tag @e[tag=daisukes.em_hit] remove daisukes.em_hit
tag @e[tag=daisukes.em_tgt] remove daisukes.em_tgt
tag @a remove daisukes.em_me
