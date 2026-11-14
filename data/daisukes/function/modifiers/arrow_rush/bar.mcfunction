# Barra de temps: verda, groga a la meitat i vermella l'ultim quart
$execute store result bossbar daisukes:rush_$(id) value run scoreboard players get @s daisukes.rush
scoreboard players operation #x daisukes.rush = @s daisukes.rush
scoreboard players operation #x daisukes.rush *= #4 daisukes.rush
$execute if score #x daisukes.rush <= @s daisukes.rush_tm run return run bossbar set daisukes:rush_$(id) color red
scoreboard players operation #x daisukes.rush /= #2 daisukes.rush
$execute if score #x daisukes.rush <= @s daisukes.rush_tm run bossbar set daisukes:rush_$(id) color yellow
