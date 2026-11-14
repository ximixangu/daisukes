# S'executa una sola vegada, 30 s despres que acabi el modificador (ho programa deactivate)
execute unless data storage daisukes:state {active: ["hot_potato"]} run kill @e[type=item_display,tag=daisukes.potato]
execute unless data storage daisukes:state {active: ["hot_potato"]} run tag @e[tag=daisukes.potato_holder] remove daisukes.potato_holder
