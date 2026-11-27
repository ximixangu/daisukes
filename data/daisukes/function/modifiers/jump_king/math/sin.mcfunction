# #x graus -> #r = sin x (deumilesimes)
scoreboard players operation #x daisukes.jk %= #360 daisukes.jk
scoreboard players set #neg daisukes.jk 0
execute if score #x daisukes.jk matches 180.. run scoreboard players set #neg daisukes.jk 1
execute if score #x daisukes.jk matches 180.. run scoreboard players remove #x daisukes.jk 180
scoreboard players operation #t daisukes.jk = #180 daisukes.jk
scoreboard players operation #t daisukes.jk -= #x daisukes.jk
scoreboard players operation #t daisukes.jk *= #x daisukes.jk
scoreboard players operation #r daisukes.jk = #t daisukes.jk
scoreboard players operation #r daisukes.jk *= #40000 daisukes.jk
scoreboard players operation #d daisukes.jk = #40500 daisukes.jk
scoreboard players operation #d daisukes.jk -= #t daisukes.jk
scoreboard players operation #r daisukes.jk /= #d daisukes.jk
execute if score #neg daisukes.jk matches 1 run scoreboard players operation #r daisukes.jk *= #-1 daisukes.jk
