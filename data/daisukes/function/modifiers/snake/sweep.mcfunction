# Cada segon. Els trossos de qui ja no hi es (desconnectat) o d'una activacio anterior (sense id: eren en un chunk sense
# carregar) desapareixen. De pas, cada cua torna a la seva llargada (si s'han tornat a carregar trossos que eren lluny)
tag @e[type=minecraft:block_display,tag=daisukes.sn_seg] add daisukes.sn_orphan
execute as @a[tag=daisukes.sn_on] run function daisukes:modifiers/snake/claim
execute as @e[type=minecraft:block_display,tag=daisukes.sn_orphan] run function daisukes:modifiers/snake/seg/retire
