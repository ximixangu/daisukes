# Snake. Cada jugador te una cua de trossos (block_display d'un bloc, amb llum propia i contorn) a les caselles per on
# ha passat. Es mira la columna (x, z) dels peus: quan en canvia, la casella d'on surt (a l'altura on era) passa a ser
# el tros mes nou i, si la cua ja fa la seva llargada, el mes vell desapareix. Saltar al mateix lloc, fer un pilar o
# caure en vertical no fan avancar la cua. Un tros nou no fa mal fins que el seu amo ja no el toca (si no, cada pas ja
# faria mal); despres, a tothom qui el toqui, amb el cos sencer (el seu amo inclos)
#  daisukes.sn: valors globals i configuracio   daisukes.sn_id: id de cada jugador i amo de cada tros
#  daisukes.sn_seq: ordre dels trossos (jugador: el comptador)   daisukes.sn_len: llargada de la cua de cada jugador
#  daisukes.sn_x, _y, _z, _dim: ultima casella de cada jugador   daisukes.sn_cd: recarrega de les mossegades
#  daisukes.sn_t: compte enrere dels trossos que desapareixen o fan pampallugues
scoreboard objectives add daisukes.sn dummy
scoreboard objectives add daisukes.sn_id dummy
scoreboard objectives add daisukes.sn_seq dummy
scoreboard objectives add daisukes.sn_len dummy
scoreboard objectives add daisukes.sn_x dummy
scoreboard objectives add daisukes.sn_y dummy
scoreboard objectives add daisukes.sn_z dummy
scoreboard objectives add daisukes.sn_dim dummy
scoreboard objectives add daisukes.sn_cd dummy
scoreboard objectives add daisukes.sn_t dummy
# Morts (la cua desapareix i torna a comencar on reapareix) i trossos de pastis (tambe fan creixer la cua)
scoreboard objectives add daisukes.sn_dead deathCount
scoreboard objectives add daisukes.sn_cake minecraft.custom:minecraft.eat_cake_slice

# =====================================================================
#  CONFIGURACIO (es llegeix en activar-se: despres de canviar-la, /reload i torna'l a activar)
# =====================================================================
# Llargada de la cua, en blocs: al principi, quant creix cada cop que menges i el maxim
scoreboard players set #start daisukes.sn 10
scoreboard players set #grow daisukes.sn 5
scoreboard players set #max daisukes.sn 100
# Mal de cada mossegada, en mitjos cors (4 = 2 cors). Tipus magic: l'armadura no el redueix (la proteccio si)
scoreboard players set #damage daisukes.sn 6
# Ticks que han de passar perque una cua et torni a fer mal
scoreboard players set #cooldown daisukes.sn 1
# Salt mes llarg, en blocs d'un tick al seguent, que encara omple la cua pel mig (corrent sobre gel, Ender Step...).
# Un salt mes llarg es un teletransport (perla, Chorus Food...): no hi deixa trossos i la cua es queda on era
scoreboard players set #fill daisukes.sn 10
# Contorn brillant de color (es veu a traves de les parets): 1 si, 0 no
scoreboard players set #glow daisukes.sn 0
# Bloc de la cua i color del contorn (enter RGB: 3800852 = #39FF14, verd fosforit)
data modify storage daisukes:snake config set value {block: "minecraft:lime_concrete", color: 3800852}
# =====================================================================

execute if score #start daisukes.sn matches ..0 run scoreboard players set #start daisukes.sn 1
execute if score #start daisukes.sn matches 101.. run scoreboard players set #start daisukes.sn 100
execute if score #grow daisukes.sn matches ..-1 run scoreboard players set #grow daisukes.sn 0
execute if score #grow daisukes.sn matches 101.. run scoreboard players set #grow daisukes.sn 100
execute if score #max daisukes.sn matches 101.. run scoreboard players set #max daisukes.sn 100
execute if score #max daisukes.sn < #start daisukes.sn run scoreboard players operation #max daisukes.sn = #start daisukes.sn
execute if score #damage daisukes.sn matches ..-1 run scoreboard players set #damage daisukes.sn 0
execute if score #damage daisukes.sn matches 101.. run scoreboard players set #damage daisukes.sn 100
execute if score #cooldown daisukes.sn matches ..0 run scoreboard players set #cooldown daisukes.sn 1
execute if score #cooldown daisukes.sn matches 201.. run scoreboard players set #cooldown daisukes.sn 200
execute if score #fill daisukes.sn matches ..0 run scoreboard players set #fill daisukes.sn 1
execute if score #fill daisukes.sn matches 9.. run scoreboard players set #fill daisukes.sn 8
execute unless score #glow daisukes.sn matches 0 run scoreboard players set #glow daisukes.sn 1
execute store result storage daisukes:snake config.damage int 1 run scoreboard players get #damage daisukes.sn
execute store result storage daisukes:snake config.glow int 1 run scoreboard players get #glow daisukes.sn
scoreboard players set #2 daisukes.sn 2

# Res d'una activacio anterior (si el mon es va tancar amb el modificador actiu): ni cues, ni ids, ni caselles
function daisukes:modifiers/snake/clear
scoreboard players reset * daisukes.sn_id
scoreboard players reset * daisukes.sn_seq
scoreboard players reset * daisukes.sn_len
scoreboard players reset * daisukes.sn_x
scoreboard players reset * daisukes.sn_y
scoreboard players reset * daisukes.sn_z
scoreboard players reset * daisukes.sn_dim
scoreboard players reset * daisukes.sn_cd
scoreboard players reset * daisukes.sn_t
scoreboard players reset * daisukes.sn_dead
scoreboard players reset * daisukes.sn_cake
scoreboard players set #next daisukes.sn 0
scoreboard players set #clock daisukes.sn 0
execute as @a at @s run function daisukes:modifiers/snake/intro
