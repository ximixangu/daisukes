# Com a mob a prop d'un jugador: brilla de color verd (el color de l'equip) mentre hi sigui a prop
effect if entity @s[tag=!daisukes.jeb_sheep] give @s minecraft:glowing 1 0 true
execute if entity @s[team=,tag=!daisukes.jeb_sheep] run team join daisukes.covid
