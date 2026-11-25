# Com a jugador (#me) que ha canviat de columna. Des de l'ultima casella: #dx #dy #dz, en valor absolut #ax #ay #az i
# el signe #sx #sy #sz (1 o -1). #k: columnes que ha avancat en l'eix que mes (1 caminant, mes si va molt de pressa)
scoreboard players operation #dx daisukes.sn = #x daisukes.sn
scoreboard players operation #dx daisukes.sn -= @s daisukes.sn_x
scoreboard players operation #dy daisukes.sn = #y daisukes.sn
scoreboard players operation #dy daisukes.sn -= @s daisukes.sn_y
scoreboard players operation #dz daisukes.sn = #z daisukes.sn
scoreboard players operation #dz daisukes.sn -= @s daisukes.sn_z
scoreboard players set #sx daisukes.sn 1
scoreboard players set #sy daisukes.sn 1
scoreboard players set #sz daisukes.sn 1
execute if score #dx daisukes.sn matches ..-1 run scoreboard players set #sx daisukes.sn -1
execute if score #dy daisukes.sn matches ..-1 run scoreboard players set #sy daisukes.sn -1
execute if score #dz daisukes.sn matches ..-1 run scoreboard players set #sz daisukes.sn -1
scoreboard players operation #ax daisukes.sn = #dx daisukes.sn
scoreboard players operation #ax daisukes.sn *= #sx daisukes.sn
scoreboard players operation #ay daisukes.sn = #dy daisukes.sn
scoreboard players operation #ay daisukes.sn *= #sy daisukes.sn
scoreboard players operation #az daisukes.sn = #dz daisukes.sn
scoreboard players operation #az daisukes.sn *= #sz daisukes.sn
scoreboard players operation #k daisukes.sn = #ax daisukes.sn
scoreboard players operation #k daisukes.sn > #az daisukes.sn

# Massa lluny d'un tick al seguent: s'ha teletransportat. Comenca aqui sense cap tros; la cua es queda on era i
# s'anira escurcant a mesura que en surtin de nous
execute if score #k daisukes.sn > #fill daisukes.sn run return run function daisukes:modifiers/snake/here

# Un tros a la casella d'on surt i, si d'un tick al seguent ha travessat mes d'una columna, un a cada columna del mig
scoreboard players operation #k2 daisukes.sn = #k daisukes.sn
scoreboard players operation #k2 daisukes.sn *= #2 daisukes.sn
scoreboard players set #i daisukes.sn 0
function daisukes:modifiers/snake/step
function daisukes:modifiers/snake/here

# Si la cua ja fa la seva llargada, els trossos mes vells desapareixen
function daisukes:modifiers/snake/trim
