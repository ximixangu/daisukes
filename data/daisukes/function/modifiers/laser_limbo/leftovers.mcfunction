# S'executa una sola vegada, 30 s despres que acabi el modificador (ho programa deactivate).
# Si es va tancar el mon amb Laser Limbo actiu, els lasers es van quedar guardats en un chunk:
# en tornar a obrir-lo, el motor desactiva el modificador abans que es carreguin, i aqui s'esborren.
execute unless data storage daisukes:state {active: ["laser_limbo"]} run kill @e[type=block_display,tag=daisukes.laser]
