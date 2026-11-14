# S'executa una sola vegada, 30 s despres que acabi el modificador (ho programa deactivate)
execute unless data storage daisukes:state {active: ["hush"]} run kill @e[type=block_display,tag=daisukes.hush_mouth]
