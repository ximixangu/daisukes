# S'executa cada tick (minecraft:tick), tambe quan Shadow Beat no esta actiu.
# Si una ombra s'ha quedat guardada en un chunk (per exemple, si es tanca el mon amb el modificador actiu),
# desapareix quan es carrega.
execute unless data storage daisukes:state {active: ["shadow"]} as @e[type=mannequin,tag=daisukes.shadow] at @s run function daisukes:modifiers/shadow/vanish
