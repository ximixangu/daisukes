scoreboard objectives add daisukes.shift dummy
scoreboard objectives add daisukes.shift_uid dummy
scoreboard objectives add daisukes.shift_rot dummy
scoreboard objectives add daisukes.shift_dirty dummy
scoreboard objectives add daisukes.shift_dead deathCount

# ==================== CONFIGURACIÓ ====================
# Número mínim i màxim que pot sortir (d'1 a 8: la hotbar té 9 caselles)
scoreboard players set #min daisukes.shift 1
scoreboard players set #max daisukes.shift 8
# Cap on va la mà: 1 = dreta, 2 = esquerra, 0 = a l'atzar
scoreboard players set #dir daisukes.shift 1
# Durada de la ruleta de l'entrada, en ticks (20 = 1 segon)
scoreboard players set #roll daisukes.shift 50
# Hotbar flotant a l'entrada: 1 = sí, 0 = no
scoreboard players set #fx daisukes.shift 1
# ======================================================

# Si algun valor està fora de rang, es corregeix sol
execute unless score #min daisukes.shift matches 1..8 run scoreboard players set #min daisukes.shift 1
execute unless score #max daisukes.shift matches 1..8 run scoreboard players set #max daisukes.shift 8
execute if score #max daisukes.shift < #min daisukes.shift run scoreboard players operation #max daisukes.shift = #min daisukes.shift
execute unless score #roll daisukes.shift matches 10..600 run scoreboard players set #roll daisukes.shift 50

# Constants
scoreboard players set #-1 daisukes.shift -1
scoreboard players set #4 daisukes.shift 4
scoreboard players set #9 daisukes.shift 9
scoreboard players set #10 daisukes.shift 10
scoreboard players set #100 daisukes.shift 100
scoreboard players set #900 daisukes.shift 900
scoreboard players set #1000 daisukes.shift 1000
scoreboard players set #1801 daisukes.shift 1801

# Tirada: #num és el número que es veu (entre #min i #max) i #d la direcció (1 dreta, 2 esquerra)
execute store result score #num daisukes.shift run random value 0..999
scoreboard players operation #span daisukes.shift = #max daisukes.shift
scoreboard players operation #span daisukes.shift -= #min daisukes.shift
scoreboard players add #span daisukes.shift 1
scoreboard players operation #num daisukes.shift %= #span daisukes.shift
scoreboard players operation #num daisukes.shift += #min daisukes.shift
scoreboard players operation #d daisukes.shift = #dir daisukes.shift
execute unless score #d daisukes.shift matches 1..2 store result score #d daisukes.shift run random value 1..2
# #n: quantes caselles a la dreta hi ha el que es fa servir de veritat (N a l'esquerra = 9-N a la dreta)
scoreboard players operation #n daisukes.shift = #num daisukes.shift
execute if score #d daisukes.shift matches 2 run scoreboard players set #n daisukes.shift 9
execute if score #d daisukes.shift matches 2 run scoreboard players operation #n daisukes.shift -= #num daisukes.shift

# Bossbar de dalt (el número surt a la ruleta)
bossbar remove daisukes:shift
bossbar add daisukes:shift ""
bossbar set daisukes:shift color purple
bossbar set daisukes:shift max 1000
bossbar set daisukes:shift players @a
bossbar set daisukes:shift name ["",{"text":"⇄ Sleight of Hand ⇄","color":"light_purple","bold":true},{"text":"   Hand shifted ","color":"gray"},{"text":"?","color":"white","bold":true}]

# Entrada: ruleta i hotbar flotant davant de cada jugador
kill @e[type=item_display,tag=daisukes.shift_fx]
scoreboard players set #on daisukes.shift 1
scoreboard players set #intro daisukes.shift 1
scoreboard players set #time daisukes.shift 0
scoreboard players set #step daisukes.shift 0
execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/hotbar_shift/intro/start
