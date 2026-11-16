# Avanç p (de 0 a 1000) i frenada suau: e = 1000 - (1000-p)^3 / 1000000
scoreboard players operation #p daisukes.shift = #time daisukes.shift
scoreboard players operation #p daisukes.shift *= #1000 daisukes.shift
scoreboard players operation #p daisukes.shift /= #roll daisukes.shift
scoreboard players set #q daisukes.shift 1000
scoreboard players operation #q daisukes.shift -= #p daisukes.shift
scoreboard players operation #e daisukes.shift = #q daisukes.shift
scoreboard players operation #e daisukes.shift *= #q daisukes.shift
scoreboard players operation #e daisukes.shift /= #1000 daisukes.shift
scoreboard players operation #e daisukes.shift *= #q daisukes.shift
scoreboard players operation #e daisukes.shift /= #1000 daisukes.shift
scoreboard players set #off daisukes.shift 1000
scoreboard players operation #off daisukes.shift -= #e daisukes.shift
# Desplaçament de la fila, en centèsimes de casella (al final, #num caselles justes)
scoreboard players operation #off daisukes.shift *= #num daisukes.shift
scoreboard players operation #off daisukes.shift /= #10 daisukes.shift
# Cada casella que passa: clic i número nou a la bossbar
scoreboard players operation #c daisukes.shift = #off daisukes.shift
scoreboard players operation #c daisukes.shift /= #100 daisukes.shift
execute if score #c daisukes.shift > #step daisukes.shift run function daisukes:modifiers/hotbar_shift/intro/step
execute store result bossbar daisukes:shift value run scoreboard players get #p daisukes.shift
