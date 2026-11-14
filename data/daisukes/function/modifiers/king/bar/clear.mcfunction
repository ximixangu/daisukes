# En desactivar-se: fora les barres daisukes:king_#ids ... _1 (tambe les de corones en chunks sense carregar)
execute store result storage daisukes:king arg.id int 1 run scoreboard players get #ids daisukes.king
function daisukes:modifiers/king/bar/remove with storage daisukes:king arg
scoreboard players remove #ids daisukes.king 1
execute if score #ids daisukes.king matches 1.. run function daisukes:modifiers/king/bar/clear
