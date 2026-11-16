# Com a un negre que el jugador mira: si l'acaba de canviar, fora el que n'hagi sortit (llavors de carabassa, arrels...)
scoreboard players set #fixed daisukes.earth 0
execute store result score #fixed daisukes.earth run function daisukes:modifiers/living_earth/fix
execute if score #fixed daisukes.earth matches 1 run kill @e[type=minecraft:item,distance=..1.5,nbt={Age: 0s}]
