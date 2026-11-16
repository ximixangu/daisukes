# Ha mort: si l'inventari ha caigut, l'objecte que estava guardat a part també cau on ha mort
scoreboard players reset @s daisukes.shift_dead
execute store result storage daisukes:shift args.u int 1 run data get entity @s UUID[0]
function daisukes:modifiers/hotbar_shift/died_drop with storage daisukes:shift args
