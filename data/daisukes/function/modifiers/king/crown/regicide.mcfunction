# Com a corona del Rei que s'acaba de morir (el cos encara hi es 1 s). Si l'ha mort un jugador (avancament
# king/regicide), la corona li vola al cap
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id

# Qui l'ha mort: el mes proper amb la marca de l'avancament (per si n'han caigut dos alhora)
tag @a[tag=daisukes.king_slayer,distance=..64,sort=nearest,limit=1] add daisukes.king_usurper

# Al xat (encara com al Rei, per dir el seu nom) i ja no es Rei
execute on vehicle run function daisukes:modifiers/king/ruler/fall

# La corona cau del cap, la cort queda indefensa i toquen a morts
ride @s dismount
function daisukes:modifiers/king/crown/fallen

# Vola cap al cap de qui l'ha mort (si no en porta ja una altra). Si no, queda flotant on es
execute if entity @a[tag=daisukes.king_usurper,tag=!daisukes.king_wearer] run function daisukes:modifiers/king/crown/usurp
execute unless entity @s[tag=daisukes.king_fly] run function daisukes:modifiers/king/crown/orphan
tag @a remove daisukes.king_usurper
