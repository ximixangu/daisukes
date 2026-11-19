# Overcharge. Els mobs a menys de 32 blocs d'un jugador (com a molt #max_mobs) formen la xarxa: etiqueta oc_mob i
# identificador a oc_id. Cada un fa fins a 3 rajos cap als mes propers (oc_l1-3: id del mob de l'altra punta;
# oc_a1-3: ticks des que es va formar; el primer segon carrega i no fa mal). Els rajos van de centre a centre.
# Els mobs que no es poden muntar porten un marker a sobre (oc_rider) que avisa quan es moren; els muntables, una
# ombra que els segueix (oc_shadow). Cada mort deixa un marker oc_pulse que fa el pols.
#  oc: valors globals (#...) i, als polsos, els ticks des de la mort
scoreboard objectives add daisukes.oc dummy
scoreboard objectives add daisukes.oc_id dummy
scoreboard objectives add daisukes.oc_l1 dummy
scoreboard objectives add daisukes.oc_l2 dummy
scoreboard objectives add daisukes.oc_l3 dummy
scoreboard objectives add daisukes.oc_a1 dummy
scoreboard objectives add daisukes.oc_a2 dummy
scoreboard objectives add daisukes.oc_a3 dummy
scoreboard players set #clock daisukes.oc 0
scoreboard players set #2 daisukes.oc 2
scoreboard players set #4 daisukes.oc 4
scoreboard players set #10 daisukes.oc 10
scoreboard players set #40 daisukes.oc 40

# =====================================================================
#  CONFIGURACIO (val des de la proxima vegada que surti el modificador)
# =====================================================================
# Distancia maxima entre dos mobs perque es connectin (blocs, 1-30)
scoreboard players set #range daisukes.oc 24
# Rajos que fa cada mob, cap als mes propers (0-3; amb 0 no hi ha xarxa, nomes polsos)
scoreboard players set #links daisukes.oc 4
# Mal en tocar un raig (4 = 2 cors) i ticks que tarda un raig nou a fer mal (20 = 1 s)
scoreboard players set #beam_damage daisukes.oc 6
scoreboard players set #beam_charge daisukes.oc 20
# Pols en morir un mob: ticks des de la mort fins a la descarga (14 = 0,7 s; com a minim 6), radi en decimes de
# bloc (35 = 3,5 blocs) i mal (6 = 3 cors)
scoreboard players set #pulse_delay daisukes.oc 15
scoreboard players set #pulse_radius daisukes.oc 50
scoreboard players set #pulse_damage daisukes.oc 6
# Detalls (1 si, 0 no): els creepers connectats es carreguen; un parallamps a 3 blocs s'emporta el pols;
# l'aigua condueix (qui hi es dins rep el pols encara que no toqui a terra)
scoreboard players set #creepers daisukes.oc 1
scoreboard players set #rods daisukes.oc 1
scoreboard players set #water daisukes.oc 1
# Rendiment: com a molt aquests mobs a la xarxa alhora (1-100; els mes propers als jugadors, a menys de 32 blocs).
# Els que no hi caben no fan rajos ni pols
scoreboard players set #max_mobs daisukes.oc 40
# =====================================================================

# Limits, i el que en surt: passos de mig bloc que pot tenir un raig per formar-se (#range) i per mantenir-se
# (2 blocs mes, perque no parpellegi), i els valors que fan servir les macros
execute if score #range daisukes.oc matches ..0 run scoreboard players set #range daisukes.oc 1
execute if score #range daisukes.oc matches 31.. run scoreboard players set #range daisukes.oc 30
execute if score #links daisukes.oc matches ..-1 run scoreboard players set #links daisukes.oc 0
execute if score #links daisukes.oc matches 4.. run scoreboard players set #links daisukes.oc 3
execute if score #pulse_delay daisukes.oc matches ..5 run scoreboard players set #pulse_delay daisukes.oc 6
execute if score #pulse_radius daisukes.oc matches ..9 run scoreboard players set #pulse_radius daisukes.oc 10
execute if score #pulse_radius daisukes.oc matches 81.. run scoreboard players set #pulse_radius daisukes.oc 80
execute if score #max_mobs daisukes.oc matches ..0 run scoreboard players set #max_mobs daisukes.oc 1
execute if score #max_mobs daisukes.oc matches 101.. run scoreboard players set #max_mobs daisukes.oc 100
scoreboard players operation #form_steps daisukes.oc = #range daisukes.oc
scoreboard players operation #form_steps daisukes.oc *= #2 daisukes.oc
scoreboard players operation #keep_steps daisukes.oc = #form_steps daisukes.oc
scoreboard players add #keep_steps daisukes.oc 4
execute store result storage daisukes:overcharge config.beam_damage int 1 run scoreboard players get #beam_damage daisukes.oc
execute store result storage daisukes:overcharge config.pulse_damage int 1 run scoreboard players get #pulse_damage daisukes.oc
execute store result storage daisukes:overcharge config.r double 0.1 run scoreboard players get #pulse_radius daisukes.oc
execute store result storage daisukes:overcharge config.rh double 0.04 run scoreboard players get #pulse_radius daisukes.oc
execute store result storage daisukes:overcharge config.ring1.r double 0.034 run scoreboard players get #pulse_radius daisukes.oc
execute store result storage daisukes:overcharge config.ring2.r double 0.067 run scoreboard players get #pulse_radius daisukes.oc
execute store result storage daisukes:overcharge config.ring3.r double 0.1 run scoreboard players get #pulse_radius daisukes.oc

# Restes d'una activacio anterior
function daisukes:modifiers/overcharge/clear

# Entrada: espurnes i un tro llunya al voltant de cada jugador
execute at @e[type=minecraft:player,gamemode=!spectator] run particle minecraft:electric_spark ~ ~1 ~ 1.5 0.8 1.5 0.1 40 force
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder hostile @s ~ ~ ~ 0.5 1.6
