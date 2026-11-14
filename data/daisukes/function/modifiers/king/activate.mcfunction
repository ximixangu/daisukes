# Long Live the King (Enter the Gungeon), en un mon obert: no hi ha sales, hi ha corts. Prop de cada jugador
# es corona Rei un monstre a l'atzar i, mentre visqui, tots els monstres a menys de 24 blocs d'ell son
# invencibles. Si el Rei cau, la cort queda indefensa durant l'interregne i despres la corona en busca un altre.
#
# La corona (text_display amb l'etiqueta daisukes.king_crown) porta l'estat de cada cort:
#   king_reign   sobre el cap del Rei (n'es passatgera)
#   king_fly     volant cap al cap d'un hereu (monstre) o, amb king_to_wearer, de qui ha mort el Rei (jugador)
#   king_worn    sobre el cap de qui ha mort el Rei, fins que s'acaba l'interregne
#   king_vacant  flotant on ha caigut el Rei (tron buit)
# Monstres: daisukes.king (el Rei), daisukes.king_heir (la corona li vola al cap), daisukes.king_reject (no la
# pot muntar). Jugadors: daisukes.king_wearer (la porta o li arriba), daisukes.king_slayer (acaba de matar un Rei)
#
#  king: rellotge i valors globals (#...), interregne de cada corona (per sota de 0, temps que fa que espera
#        hereu) i espera entre avisos de cada jugador
#  king_id: cort de cada corona, del seu Rei, hereu i jugador que la porta. #ids: corones (i barres) creades
#  king_t: ticks que fa que vola cada corona | king_fx: musica pendent de cada corona
#  king_sub: monstres protegits ara mateix (1)
scoreboard objectives add daisukes.king dummy
scoreboard objectives add daisukes.king_id dummy
scoreboard objectives add daisukes.king_t dummy
scoreboard objectives add daisukes.king_fx dummy
scoreboard objectives add daisukes.king_sub dummy
scoreboard players set #5 daisukes.king 5
scoreboard players set #20 daisukes.king 20

# =====================================================================
#  CONFIGURACIO
# =====================================================================
# Interregne: ticks des que cau el Rei fins que la corona en busca un de nou (300 = 15 s, minim 20).
# Tambe es el que duren la Forca i Velocitat de qui l'ha mort i la brillantor de la cort que deixa.
scoreboard players set #interregnum daisukes.king 300
# El radi de la cort (24 blocs) es a court/hold i court/shatter; l'area on es busca Rei, a court/found i crown/seek
# =====================================================================

# Segons de l'interregne, per als efectes que en depenen (macros amb la clau "s")
scoreboard players operation #secs daisukes.king = #interregnum daisukes.king
scoreboard players operation #secs daisukes.king /= #20 daisukes.king
execute if score #secs daisukes.king matches ..0 run scoreboard players set #secs daisukes.king 1
execute store result storage daisukes:king arg.s int 1 run scoreboard players get #secs daisukes.king

# Rellotge (l'entrada, els primers ticks), corones creades, fils daurats cada 2 s i balanceig de les corones
scoreboard players set #clock daisukes.king 0
scoreboard players set #ids daisukes.king 0
data remove storage daisukes:king bars
scoreboard players set #pulse daisukes.king 0
scoreboard players set #bob daisukes.king 0

# El Rei brilla daurat (el color de l'equip)
team add daisukes.king
team modify daisukes.king color gold

# Restes d'una activacio anterior que fossin en chunks carregats
kill @e[type=minecraft:text_display,tag=daisukes.king_crown]
execute as @e[tag=daisukes.king] run function daisukes:modifiers/king/ruler/strip
tag @e[tag=daisukes.king_reject] remove daisukes.king_reject
