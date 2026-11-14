# Macro {id}. Com a corona: la veuen els jugadors a menys de 40 blocs, amb la vida del Rei o el que queda
# d'interregne. Amagada mentre la corona baixa cap a un hereu, i quan el tron fa estona que es buit
$execute if entity @s[tag=daisukes.king_fly,tag=!daisukes.king_to_wearer] run return run bossbar set daisukes:king_$(id) players
$execute if entity @s[tag=!daisukes.king_reign,tag=!daisukes.king_fly] if score @s daisukes.king matches ..0 run return run bossbar set daisukes:king_$(id) players
$bossbar set daisukes:king_$(id) players @a[distance=..40]
$execute if entity @s[tag=daisukes.king_reign] on vehicle store result bossbar daisukes:king_$(id) value run data get entity @s Health
$execute if entity @s[tag=!daisukes.king_reign] store result bossbar daisukes:king_$(id) value run scoreboard players get @s daisukes.king
