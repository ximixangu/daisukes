# Com el jugador, als peus, quan acaba de caure prou (#n: centesimes de bloc per sota d'on va saltar).
# Si no trepitja cap bloc (una barca, un mob...), res
scoreboard players set #do daisukes.weight 0
scoreboard players set #cols daisukes.weight 0
function daisukes:modifiers/heavy/feet
execute if score #cols daisukes.weight matches 0 run return 0

# Cadena: com a molt #chain cops seguits, i nomes si l'anterior va ser fa poc (#window). Si no, aquest es el primer
execute unless score @s daisukes.weight_last = @s daisukes.weight_last run scoreboard players set @s daisukes.weight_hits 0
scoreboard players operation #since daisukes.weight = #now daisukes.weight
scoreboard players operation #since daisukes.weight -= @s daisukes.weight_last
execute if score #since daisukes.weight > #window daisukes.weight run scoreboard players set @s daisukes.weight_hits 0
execute if score @s daisukes.weight_hits >= #chain daisukes.weight run return run scoreboard players set @s daisukes.weight_hits 0
scoreboard players add @s daisukes.weight_hits 1
scoreboard players operation @s daisukes.weight_last = #now daisukes.weight
scoreboard players operation #hits daisukes.weight = @s daisukes.weight_hits

# S'enfonsen tants blocs com has caigut (com a molt #depth), a cada bloc que trepitges (un marcador a cadascun)
scoreboard players operation #left daisukes.weight = #depth daisukes.weight
scoreboard players operation #left daisukes.weight *= #100 daisukes.weight
execute if score #n daisukes.weight < #left daisukes.weight run scoreboard players operation #left daisukes.weight = #n daisukes.weight
scoreboard players set #do daisukes.weight 1
scoreboard players set #cols daisukes.weight 0
function daisukes:modifiers/heavy/feet
execute as @e[type=minecraft:marker,tag=daisukes.weight_col] at @s run function daisukes:modifiers/heavy/column
# Al primer cop s'obre el voltant on has caigut; a l'ultim de la cadena, al fons, on acabaras
execute if score #hits daisukes.weight matches 1 as @e[type=minecraft:marker,tag=daisukes.weight_col] at @s positioned ~ ~1 ~ run function daisukes:modifiers/heavy/ring
execute if score #hits daisukes.weight = #chain daisukes.weight as @e[type=minecraft:marker,tag=daisukes.weight_bot] at @s run function daisukes:modifiers/heavy/ring
kill @e[type=minecraft:marker,tag=daisukes.weight_col]
kill @e[type=minecraft:marker,tag=daisukes.weight_bot]

# Cop sec. El que es trenca no deixa res (menys el que hi havia als contenidors, que te Age 1)
function daisukes:modifiers/heavy/sound with storage daisukes:weight sound
execute positioned ~-3 ~-66 ~-3 run kill @e[type=minecraft:item,dx=6,dy=68,dz=6,nbt={Age: 0s}]
execute positioned ~-3 ~-66 ~-3 run kill @e[type=minecraft:experience_orb,dx=6,dy=68,dz=6,nbt={Age: 0s}]

# Si encara trepitges alguna cosa (un bloc protegit), no caus: la cadena s'acaba
scoreboard players set #do daisukes.weight 0
scoreboard players set #cols daisukes.weight 0
function daisukes:modifiers/heavy/feet
execute if score #cols daisukes.weight matches 1.. run scoreboard players set @s daisukes.weight_hits 0
