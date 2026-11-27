# #n (deumilesimes) -> #q, nivell del gruixut (128 + arrodonir(#n / 1000)), i #r, nivell del fi amb el que hi falta
# (128 + arrodonir(resta / 10)). Tots dos entre 1 i 255
scoreboard players operation #q daisukes.jk = #n daisukes.jk
scoreboard players add #q daisukes.jk 500
scoreboard players operation #q daisukes.jk /= #1000 daisukes.jk
execute if score #q daisukes.jk matches 128.. run scoreboard players set #q daisukes.jk 127
execute if score #q daisukes.jk matches ..-128 run scoreboard players set #q daisukes.jk -127
scoreboard players operation #r daisukes.jk = #q daisukes.jk
scoreboard players operation #r daisukes.jk *= #-1 daisukes.jk
scoreboard players operation #r daisukes.jk *= #1000 daisukes.jk
scoreboard players operation #r daisukes.jk += #n daisukes.jk
scoreboard players add #r daisukes.jk 5
scoreboard players operation #r daisukes.jk /= #10 daisukes.jk
execute if score #r daisukes.jk matches 128.. run scoreboard players set #r daisukes.jk 127
execute if score #r daisukes.jk matches ..-128 run scoreboard players set #r daisukes.jk -127
scoreboard players add #q daisukes.jk 128
scoreboard players add #r daisukes.jk 128
