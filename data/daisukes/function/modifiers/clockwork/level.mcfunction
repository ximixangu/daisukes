# Com al jugador, als seus peus: nivell segons la corda (0: 75 % o mes ... 3: menys del 25 %, 4: zero)
scoreboard players set #ti daisukes.cw 0
execute if score @s daisukes.cw_s matches ..17999 run scoreboard players set #ti daisukes.cw 1
execute if score @s daisukes.cw_s matches ..11999 run scoreboard players set #ti daisukes.cw 2
execute if score @s daisukes.cw_s matches ..5999 run scoreboard players set #ti daisukes.cw 3
execute if score @s daisukes.cw_s matches ..0 run scoreboard players set #ti daisukes.cw 4
execute unless score @s daisukes.cw_t = #ti daisukes.cw run function daisukes:modifiers/clockwork/relevel
# Aspecte de la clau i la barra: 0 plena (lliure), 1 normal, 2 baixa (nivell 3 o 4)
scoreboard players set #lk daisukes.cw 1
execute if score @s daisukes.cw_h matches 1.. run scoreboard players set #lk daisukes.cw 0
execute if score #ti daisukes.cw matches 3.. run scoreboard players set #lk daisukes.cw 2
execute unless score @s daisukes.cw_v = #lk daisukes.cw run function daisukes:modifiers/clockwork/relook
# Clavat: la molla grinyola (#frozen de mal cada #frozen_t ticks) i brilla, perque els amics el trobin
execute if score #ti daisukes.cw matches 4 run function daisukes:modifiers/clockwork/frozen
# La barra de dalt: la corda que li queda
scoreboard players operation #pct daisukes.cw = @s daisukes.cw_s
scoreboard players operation #pct daisukes.cw /= #240 daisukes.cw
execute store result storage daisukes:clockwork n int 1 run scoreboard players get @s daisukes.cw
function daisukes:modifiers/clockwork/bar/show with storage daisukes:clockwork
