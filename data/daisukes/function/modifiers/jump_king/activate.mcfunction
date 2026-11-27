# Jump King. Per fer saltar (o rebotar) el jugador se li posa un moment a la ranura de la cadira (saddle: no es veu)
# un pal amb sis encanteris (enchantment/jump_king). En sortir del mode espectador, el joc aplica tot d'una el seu
# efecte, que fixa la velocitat del jugador, exacta, tambe al client. Velocitats en deumilesimes de bloc/tick,
# alcades en centesimes de bloc
scoreboard objectives add daisukes.jk dummy
scoreboard objectives add daisukes.jk_c dummy
scoreboard objectives add daisukes.jk_t dummy
scoreboard objectives add daisukes.jk_st dummy
scoreboard objectives add daisukes.jk_vx dummy
scoreboard objectives add daisukes.jk_vy dummy
scoreboard objectives add daisukes.jk_vz dummy
scoreboard objectives add daisukes.jk_g dummy
scoreboard objectives add daisukes.jk_y0 dummy
scoreboard objectives add daisukes.jk_ym dummy
scoreboard objectives add daisukes.jk_yl dummy
scoreboard objectives add daisukes.jk_xl dummy
scoreboard objectives add daisukes.jk_zl dummy
scoreboard objectives add daisukes.jk_cx dummy
scoreboard objectives add daisukes.jk_cy dummy
scoreboard objectives add daisukes.jk_cz dummy
scoreboard objectives add daisukes.jk_fr dummy
scoreboard objectives add daisukes.jk_lag dummy
scoreboard objectives add daisukes.jk_acc dummy
scoreboard objectives add daisukes.jk_ox dummy
scoreboard objectives add daisukes.jk_oz dummy
scoreboard objectives add daisukes.jk_dead deathCount
scoreboard objectives add daisukes.jk_left minecraft.custom:minecraft.leave_game

# ============================== CONFIGURACIO ==============================
# Ticks que es pot carregar el salt (22 = 1,1 s). Amb #auto 1, en arribar-hi salta sol (com al Jump King)
scoreboard players set #max daisukes.jk 22
scoreboard players set #auto daisukes.jk 1
# Velocitat amunt, en centesimes de bloc/tick: d'un toc (30: puja 0,7 blocs) a carrega plena (100: 6 blocs)
scoreboard players set #v_min daisukes.jk 30
scoreboard players set #v_max daisukes.jk 120
# Velocitat cap on prems WASD: d'un toc (20: menys d'1 bloc) a carrega plena (75: 5 blocs; mes si en l'aire prems W)
scoreboard players set #h_min daisukes.jk 20
scoreboard players set #h_max daisukes.jk 100
# % de la velocitat amb que rebotes en picar contra una paret. 0: no rebotes
scoreboard players set #bounce daisukes.jk 0
# Caure mes de #splat blocs (amb la gravetat de sempre; si es mes fluixa, mes) t'estampa contra el terra #splat_t
# ticks: no et mous ni carregues. 0: mai
scoreboard players set #splat daisukes.jk 10
scoreboard players set #splat_t daisukes.jk 16
# % que t'ajups amb la carrega plena; estampat, el doble. 0: gens
scoreboard players set #squat daisukes.jk 15
# ==========================================================================

execute if score #max daisukes.jk matches ..0 run scoreboard players set #max daisukes.jk 1
execute if score #max daisukes.jk matches 61.. run scoreboard players set #max daisukes.jk 60
execute if score #v_max daisukes.jk matches ..0 run scoreboard players set #v_max daisukes.jk 1
execute if score #v_max daisukes.jk matches 301.. run scoreboard players set #v_max daisukes.jk 300
execute if score #v_min daisukes.jk matches ..0 run scoreboard players set #v_min daisukes.jk 1
execute if score #v_min daisukes.jk > #v_max daisukes.jk run scoreboard players operation #v_min daisukes.jk = #v_max daisukes.jk
execute if score #h_max daisukes.jk matches ..-1 run scoreboard players set #h_max daisukes.jk 0
execute if score #h_max daisukes.jk matches 201.. run scoreboard players set #h_max daisukes.jk 200
execute if score #h_min daisukes.jk matches ..-1 run scoreboard players set #h_min daisukes.jk 0
execute if score #h_min daisukes.jk > #h_max daisukes.jk run scoreboard players operation #h_min daisukes.jk = #h_max daisukes.jk
execute if score #bounce daisukes.jk matches ..-1 run scoreboard players set #bounce daisukes.jk 0
execute if score #bounce daisukes.jk matches 101.. run scoreboard players set #bounce daisukes.jk 100
execute if score #splat daisukes.jk matches ..-1 run scoreboard players set #splat daisukes.jk 0
execute if score #splat daisukes.jk matches 1001.. run scoreboard players set #splat daisukes.jk 1000
execute if score #splat_t daisukes.jk matches ..0 run scoreboard players set #splat_t daisukes.jk 1
execute if score #splat_t daisukes.jk matches 201.. run scoreboard players set #splat_t daisukes.jk 200
execute if score #squat daisukes.jk matches ..-1 run scoreboard players set #squat daisukes.jk 0
execute if score #squat daisukes.jk matches 31.. run scoreboard players set #squat daisukes.jk 30

scoreboard players operation #max1 daisukes.jk = #max daisukes.jk
scoreboard players remove #max1 daisukes.jk 1
execute if score #max1 daisukes.jk matches ..0 run scoreboard players set #max1 daisukes.jk 1
scoreboard players set #-1 daisukes.jk -1
scoreboard players set #-6 daisukes.jk -6
scoreboard players set #-98 daisukes.jk -98
scoreboard players set #-100 daisukes.jk -100
scoreboard players set #2 daisukes.jk 2
scoreboard players set #4 daisukes.jk 4
scoreboard players set #10 daisukes.jk 10
scoreboard players set #20 daisukes.jk 20
scoreboard players set #91 daisukes.jk 91
scoreboard players set #294 daisukes.jk 294
scoreboard players set #98 daisukes.jk 98
scoreboard players set #100 daisukes.jk 100
scoreboard players set #180 daisukes.jk 180
scoreboard players set #360 daisukes.jk 360
scoreboard players set #1000 daisukes.jk 1000
scoreboard players set #4199 daisukes.jk 4199
scoreboard players set #7071 daisukes.jk 7071
scoreboard players set #10000 daisukes.jk 10000
scoreboard players set #40000 daisukes.jk 40000
scoreboard players set #40500 daisukes.jk 40500
scoreboard players set #80000 daisukes.jk 80000

# Cadascu torna a provar si pot fer servir Jump King (potser ara el mon ja s'ha reobert)
tag @a remove daisukes.jk_ok
tag @a remove daisukes.jk_off
