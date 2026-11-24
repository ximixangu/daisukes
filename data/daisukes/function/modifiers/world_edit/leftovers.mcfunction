# Cada segon (core/leftovers), si World Edit no es actiu: caixes que eren en chunks sense carregar i la caixa forta
execute if data storage daisukes:state {active: ["world_edit"]} run return 0
kill @e[type=!minecraft:player,tag=daisukes.we]
execute if data storage daisukes:world_edit {vault: 1b} in minecraft:overworld run forceload remove 29998976 29998976 29999007 29999007
data remove storage daisukes:world_edit vault
