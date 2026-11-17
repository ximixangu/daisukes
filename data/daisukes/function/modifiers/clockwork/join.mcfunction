# Primer cop que el veiem: un numero, la seva barra i corda plena
scoreboard players add #ids daisukes.cw 1
scoreboard players operation @s daisukes.cw = #ids daisukes.cw
scoreboard players operation @s daisukes.cw_l = #now daisukes.cw
scoreboard players set @s daisukes.cw_k 0
execute store result storage daisukes:clockwork n int 1 run scoreboard players get @s daisukes.cw
function daisukes:modifiers/clockwork/bar/add with storage daisukes:clockwork
function daisukes:modifiers/clockwork/absent
