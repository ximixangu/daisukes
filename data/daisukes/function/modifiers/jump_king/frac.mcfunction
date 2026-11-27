# Com al jugador que carrega: #c, quanta carrega porta, en milesimes (1 tick: 0; #max ticks: 1000)
scoreboard players operation #c daisukes.jk = @s daisukes.jk_c
scoreboard players remove #c daisukes.jk 1
scoreboard players operation #c daisukes.jk *= #1000 daisukes.jk
scoreboard players operation #c daisukes.jk /= #max1 daisukes.jk
execute if score #c daisukes.jk matches 1001.. run scoreboard players set #c daisukes.jk 1000
execute if score #max daisukes.jk matches 1 run scoreboard players set #c daisukes.jk 1000
