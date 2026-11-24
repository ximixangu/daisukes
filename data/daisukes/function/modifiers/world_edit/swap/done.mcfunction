# Com a caixa blava, al seu origen: intercanviades. Efectes a totes dues i fora
execute as @e[type=minecraft:marker,tag=daisukes.we_mate] at @s run function daisukes:modifiers/world_edit/box/swap_fx with storage daisukes:world_edit config.fx
execute as @e[type=minecraft:marker,tag=daisukes.we_mate] at @s run function daisukes:modifiers/world_edit/box/remove
function daisukes:modifiers/world_edit/box/swap_fx with storage daisukes:world_edit config.fx
function daisukes:modifiers/world_edit/box/remove
