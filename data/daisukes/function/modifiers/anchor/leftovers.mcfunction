# Cada segon (core/leftovers), nomes si Anchored no esta actiu: el que era en chunks sense carregar, jugadors que estaven
# desconnectats (encara encadenats o amb alguna cosa que brilla) i objectes marcats que tornen d'un contenidor
execute if data storage daisukes:state {active: ["anchor"]} run return 0
kill @e[tag=daisukes.anchor,type=!minecraft:player]
execute as @a[tag=daisukes.anchor_p] run function daisukes:modifiers/anchor/restore
tag @a[tag=daisukes.anchor_m] remove daisukes.anchor_m
tag @a[tag=daisukes.anchor_last] remove daisukes.anchor_last
tag @a[tag=daisukes.anchor_once] remove daisukes.anchor_once
execute as @a run function daisukes:modifiers/anchor/unmark_all
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s contents daisukes:anchor/unmark
tag @e[type=minecraft:item,tag=daisukes.anchor_seen] remove daisukes.anchor_seen
execute as @e[type=#daisukes:anchor/holders] run function daisukes:modifiers/anchor/sweep_holder
bossbar remove daisukes:anchor
