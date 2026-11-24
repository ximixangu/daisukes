# Curse of the Blind. Cada objecte rep el component item_model = structure_void: es veu com un structure void pero
# continua sent el mateix objecte (nom, us, durabilitat...). En acabar, restore li treu el component i torna a ser com
# abans. Ho noten l'inventari, l'armadura, la segona ma, el cursor, la graella de crafteig i els objectes de terra a
# prop dels jugadors (tick)
scoreboard objectives add daisukes.cb dummy

# =====================================================================
#  CONFIGURACIO (es llegeix en activar-se: despres de canviar-la, /reload i torna'l a activar)
# =====================================================================
# Objectes a terra que es tornen structure void abans que els agafis, en blocs al voltant de cada jugador. Aixi el
# que agafes s'apila amb el que ja tens (0 = cap: llavors cada cosa que agafes fa un munt a part)
scoreboard players set #ground daisukes.cb 12
# =====================================================================

execute if score #ground daisukes.cb matches ..-1 run scoreboard players set #ground daisukes.cb 0
execute if score #ground daisukes.cb matches 33.. run scoreboard players set #ground daisukes.cb 32
execute store result storage daisukes:curse_blind config.r int 1 run scoreboard players get #ground daisukes.cb

scoreboard players set #clock daisukes.cb 0
kill @e[type=minecraft:item_display,tag=daisukes.cb_tmp]
execute as @a at @s run function daisukes:modifiers/curse_blind/intro
