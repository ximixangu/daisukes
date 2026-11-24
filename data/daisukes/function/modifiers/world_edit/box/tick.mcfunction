# Com a caixa (blava o vermella), al seu origen, cada tick: compte enrere, un avis als 3, 2 i 1 s i, el darrer
# segon, les arestes parpellegen
scoreboard players remove @s daisukes.we_t 1
scoreboard players add #live daisukes.we 1
execute if score @s daisukes.we_t matches 60 run function daisukes:modifiers/world_edit/box/beep with storage daisukes:world_edit config.fx
execute if score @s daisukes.we_t matches 40 run function daisukes:modifiers/world_edit/box/beep with storage daisukes:world_edit config.fx
execute if score @s daisukes.we_t matches 20 run function daisukes:modifiers/world_edit/box/beep with storage daisukes:world_edit config.fx
execute if score @s daisukes.we_t matches 1..19 run function daisukes:modifiers/world_edit/box/blink
