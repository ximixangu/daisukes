# Cada segon (core/leftovers), nomes si Clockwork no esta actiu: claus en chunks sense carregar, o jugadors que no hi eren
execute if data storage daisukes:state {active: ["clockwork"]} run return 0
execute as @e[type=minecraft:item_display,tag=daisukes.cw] run function daisukes:modifiers/clockwork/remove
execute as @a[tag=daisukes.cw_has] run function daisukes:modifiers/clockwork/clear
execute as @a[tag=daisukes.cw_frozen] run function daisukes:modifiers/clockwork/unfreeze
