# Tanks. Les tecles es llegeixen amb el predicat input del jugador. A/D: la camera gira (rotate) i el jugador
# no es mou mentre gira (velocitat x 0): Minecraft mou els jugadors al client i l'unic que se'ls pot frenar des del
# servidor es la velocitat, que de pas estreny el FOV. Shift: una mina (block_display) als peus. Salt: esclaten
scoreboard objectives add daisukes.tk dummy
scoreboard objectives add daisukes.tk_id dummy
scoreboard objectives add daisukes.tk_n dummy
scoreboard objectives add daisukes.tk_jump minecraft.custom:minecraft.jump

# =====================================================================
#  CONFIGURACIO (es llegeix en activar-se: despres de canviar-la, /reload i torna'l a activar)
# =====================================================================
# Gir amb A/D, en decimes de grau per tick (45 = 4,5 graus: una volta sencera en 4 s). Els dos primers ticks gira
# a un terc i a dos tercos, perque un toc curt sigui un gir petit
scoreboard players set #turn daisukes.tk 45
# Moviment que es permet mentre gira, en % (0 = pivota quiet. Mes alt, el FOV s'estreny menys pero llisca de costat)
scoreboard players set #turn_move daisukes.tk 0
# Mines per jugador alhora
scoreboard players set #max_mines daisukes.tk 5
# Potencia de l'explosio, en decimes (30 = 3, com un creeper; la TNT fa 4)
scoreboard players set #power daisukes.tk 30
# Ticks des del salt fins que esclata la primera mina, i d'una a la seguent (0 = totes alhora)
scoreboard players set #fuse daisukes.tk 10
scoreboard players set #chain daisukes.tk 3
# =====================================================================

execute if score #turn daisukes.tk matches ..4 run scoreboard players set #turn daisukes.tk 5
execute if score #turn daisukes.tk matches 181.. run scoreboard players set #turn daisukes.tk 180
execute if score #turn_move daisukes.tk matches ..-1 run scoreboard players set #turn_move daisukes.tk 0
execute if score #turn_move daisukes.tk matches 101.. run scoreboard players set #turn_move daisukes.tk 100
execute if score #max_mines daisukes.tk matches ..0 run scoreboard players set #max_mines daisukes.tk 1
execute if score #max_mines daisukes.tk matches 65.. run scoreboard players set #max_mines daisukes.tk 64
execute if score #power daisukes.tk matches ..0 run scoreboard players set #power daisukes.tk 1
execute if score #power daisukes.tk matches 1281.. run scoreboard players set #power daisukes.tk 1280
execute if score #fuse daisukes.tk matches ..-1 run scoreboard players set #fuse daisukes.tk 0
execute if score #fuse daisukes.tk matches 101.. run scoreboard players set #fuse daisukes.tk 100
execute if score #chain daisukes.tk matches ..-1 run scoreboard players set #chain daisukes.tk 0
execute if score #chain daisukes.tk matches 41.. run scoreboard players set #chain daisukes.tk 40

# Graus de cada tick de gir (config.left i config.right: {a, b, c}, a l'esquerra negatius) i el modificador de
# velocitat mentre gira (config.move = #turn_move / 100 - 1)
scoreboard players set #2 daisukes.tk 2
scoreboard players set #3 daisukes.tk 3
scoreboard players set #4 daisukes.tk 4
scoreboard players set #5 daisukes.tk 5
scoreboard players operation #t1 daisukes.tk = #turn daisukes.tk
scoreboard players operation #t1 daisukes.tk /= #3 daisukes.tk
scoreboard players operation #t2 daisukes.tk = #t1 daisukes.tk
scoreboard players operation #t2 daisukes.tk *= #2 daisukes.tk
execute store result storage daisukes:tank config.left.a float -0.1 run scoreboard players get #t1 daisukes.tk
execute store result storage daisukes:tank config.left.b float -0.1 run scoreboard players get #t2 daisukes.tk
execute store result storage daisukes:tank config.left.c float -0.1 run scoreboard players get #turn daisukes.tk
execute store result storage daisukes:tank config.right.a float 0.1 run scoreboard players get #t1 daisukes.tk
execute store result storage daisukes:tank config.right.b float 0.1 run scoreboard players get #t2 daisukes.tk
execute store result storage daisukes:tank config.right.c float 0.1 run scoreboard players get #turn daisukes.tk
scoreboard players operation #m daisukes.tk = #turn_move daisukes.tk
scoreboard players remove #m daisukes.tk 100
execute store result storage daisukes:tank config.move float 0.01 run scoreboard players get #m daisukes.tk

# Ids, girs i salts d'una activacio anterior (si el mon es va tancar amb el modificador actiu) fora
scoreboard players reset * daisukes.tk_id
scoreboard players reset * daisukes.tk_n
scoreboard players reset * daisukes.tk_jump
scoreboard players set #clock daisukes.tk 0
scoreboard players set #next daisukes.tk 0
scoreboard players set #lit daisukes.tk 0
function daisukes:modifiers/tank/clear
execute as @a at @s run function daisukes:modifiers/tank/intro
