scoreboard players add #time daisukes.shift 1
# Qui entra durant l'entrada: neteja les restes d'una partida anterior
execute as @e[type=player,gamemode=!creative,gamemode=!spectator] unless score @s daisukes.shift_uid = @s daisukes.shift_uid at @s run function daisukes:modifiers/hotbar_shift/first
# 1) La fila de la hotbar llisca #num caselles i frena a poc a poc
execute if score #time daisukes.shift <= #roll daisukes.shift run function daisukes:modifiers/hotbar_shift/intro/reel
execute as @e[type=player] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/hotbar_shift/intro/follow
# 2) Para en sec: acord i espurnes
execute if score #time daisukes.shift = #roll daisukes.shift run function daisukes:modifiers/hotbar_shift/intro/lock
# 3) La fila vola cap a la hotbar i 4) comença la il·lusió
scoreboard players operation #k daisukes.shift = #time daisukes.shift
scoreboard players operation #k daisukes.shift -= #roll daisukes.shift
execute if score #k daisukes.shift matches 14 run function daisukes:modifiers/hotbar_shift/intro/fly
execute if score #k daisukes.shift matches 23.. run function daisukes:modifiers/hotbar_shift/intro/end
