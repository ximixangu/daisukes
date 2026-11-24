# World Edit. El mon es divideix en caselles cubiques de #size blocs (cantonades a multiples de #size). Cada jugador,
# cada #every segons, rep una parella de caixes en dues de les 6 caselles veines de la seva (no on hi ha algu ni on ja
# n'hi ha una altra). Al cap de #delay segons s'intercanvien tots els blocs: tres clones passant per una caixa forta
# lluny (x i z = 29998976, a l'Overworld, amb forceload; Ctrl+Z en fa servir una altra, al costat). Les entitats no es
# mouen: qui sigui a dins es troba els blocs nous al voltant
#  daisukes.we: valors globals   daisukes.we_t: compte enrere (jugador: parella seguent; caixa: intercanvi)
#  daisukes.we_id: parella de cada caixa
scoreboard objectives add daisukes.we dummy
scoreboard objectives add daisukes.we_t dummy
scoreboard objectives add daisukes.we_id dummy

# =====================================================================
#  CONFIGURACIO (es llegeix en activar-se: despres de canviar-la, /reload i torna'l a activar)
# =====================================================================
# Mida de les caixes, en blocs (16 = com una seccio de chunk; 8, mes petites). Entre 4 i 32 (32 pesa: 4 operacions de
# 32768 blocs a cada intercanvi)
scoreboard players set #size daisukes.we 12
# Cada quants segons surt una parella nova al voltant de cada jugador
scoreboard players set #every daisukes.we 15
# Segons des que surten fins que s'intercanvien
scoreboard players set #delay daisukes.we 4
# =====================================================================

execute if score #size daisukes.we matches ..3 run scoreboard players set #size daisukes.we 4
execute if score #size daisukes.we matches 33.. run scoreboard players set #size daisukes.we 32
execute if score #every daisukes.we matches ..0 run scoreboard players set #every daisukes.we 1
execute if score #every daisukes.we matches 3601.. run scoreboard players set #every daisukes.we 3600
execute if score #delay daisukes.we matches ..0 run scoreboard players set #delay daisukes.we 1
execute if score #delay daisukes.we matches 121.. run scoreboard players set #delay daisukes.we 120

# En ticks, i la mida menys 1 (#d: de la cantonada de baix a la de dalt)
scoreboard players set #4 daisukes.we 4
scoreboard players set #20 daisukes.we 20
scoreboard players operation #every_t daisukes.we = #every daisukes.we
scoreboard players operation #every_t daisukes.we *= #20 daisukes.we
scoreboard players operation #delay_t daisukes.we = #delay daisukes.we
scoreboard players operation #delay_t daisukes.we *= #20 daisukes.we
scoreboard players operation #d daisukes.we = #size daisukes.we
scoreboard players remove #d daisukes.we 1
execute store result storage daisukes:world_edit try.d int 1 run scoreboard players get #d daisukes.we

# Arestes (box/edges): gruix 0,1, comencen a -0,05 o a mida-0,05 i fan mida+0,1 de llarg
scoreboard players set #100 daisukes.we 100
scoreboard players operation #m daisukes.we = #size daisukes.we
scoreboard players operation #m daisukes.we *= #100 daisukes.we
data modify storage daisukes:world_edit config.blue set value {n: -0.05f, t: 0.1f, block: "minecraft:blue_concrete", color: 3368703}
scoreboard players add #m daisukes.we 10
execute store result storage daisukes:world_edit config.blue.l float 0.01 run scoreboard players get #m daisukes.we
scoreboard players remove #m daisukes.we 15
execute store result storage daisukes:world_edit config.blue.f float 0.01 run scoreboard players get #m daisukes.we
data modify storage daisukes:world_edit config.red set from storage daisukes:world_edit config.blue
data modify storage daisukes:world_edit config.red merge value {block: "minecraft:red_concrete", color: 16724787}
# Centre de la caixa (mida/2) i escampada de les particules (mida/4)
execute store result storage daisukes:world_edit config.fx.half float 0.5 run scoreboard players get #size daisukes.we
execute store result storage daisukes:world_edit config.fx.spread float 0.25 run scoreboard players get #size daisukes.we
# Caixa forta: de (29998976, 200, 29998976) a +#d
data modify storage daisukes:world_edit config.vault set value {vx: 29998976, vy: 200, vz: 29998976}
scoreboard players set #v daisukes.we 29998976
scoreboard players operation #v daisukes.we += #d daisukes.we
execute store result storage daisukes:world_edit config.vault.vx2 int 1 run scoreboard players get #v daisukes.we
execute store result storage daisukes:world_edit config.vault.vz2 int 1 run scoreboard players get #v daisukes.we
scoreboard players set #v daisukes.we 200
scoreboard players operation #v daisukes.we += #d daisukes.we
execute store result storage daisukes:world_edit config.vault.vy2 int 1 run scoreboard players get #v daisukes.we

# La caixa forta (4 chunks: hi cap la mida maxima) es queda carregada mentre dura
execute in minecraft:overworld run forceload add 29998976 29998976 29999007 29999007
data modify storage daisukes:world_edit vault set value 1b

# Res d'una activacio anterior; la primera parella de cadascu, d'aqui a 3 s
function daisukes:modifiers/world_edit/clear
scoreboard players reset * daisukes.we_t
scoreboard players reset * daisukes.we_id
scoreboard players set #next daisukes.we 0
scoreboard players set #live daisukes.we 0
scoreboard players set #clock daisukes.we 0
scoreboard players set @a daisukes.we_t 60
execute as @a at @s run function daisukes:modifiers/world_edit/intro
