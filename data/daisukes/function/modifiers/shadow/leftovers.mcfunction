# S'executa una sola vegada, 30 s despres que acabi el modificador (ho programa deactivate).
# Si es va tancar el mon amb Shadow Beat actiu, les ombres es van quedar guardades en un chunk:
# en tornar a obrir-lo, el motor desactiva el modificador abans que es carreguin, i aqui s'esborren.
execute unless data storage daisukes:state {active: ["shadow"]} as @e[type=mannequin,tag=daisukes.shadow] at @s run function daisukes:modifiers/shadow/vanish
