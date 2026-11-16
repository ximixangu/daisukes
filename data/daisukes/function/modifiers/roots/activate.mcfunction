# Grasping Roots: cada cert temps unes arrels surten del terra a les 4 cantonades del bloc de cada jugador (tots alhora).
# Si ja caminava (encara que sigui a poc a poc), les esquiva; si estava quiet o ajupit, el lliguen pels peus al moment.
# Lligat no pot saltar ni pegar, i com mes s'allunya mes estirades van (i mes lent).
# Si estira la mes tensa prou estona, es trenca. Un company que no estigui lligat les pot tallar (amb destral, 2 cops cadascuna).
#  daisukes.roots: globals, numero del jugador i de l'amo de cada peca   daisukes.roots_r: quina arrel es (1-4)   daisukes.roots_l: llargada de la corda
#  daisukes.roots_c: cops de destral   daisukes.roots_t: temps d'una animacio   daisukes.roots_p: fase del jugador (0 lliure, 1 l'agafen, 2 lligat)
#  daisukes.roots_n: temps lligat   daisukes.roots_s: temps estirant   daisukes.roots_v: lentitud aplicada   daisukes.roots_z: ultim tick vist   daisukes.roots_q: com es mou ara
#  daisukes.roots_mw/ms/mo/mu: cm caminant, corrent, i caminant dins l'aigua (estadistiques; es buiden cada tick)
scoreboard objectives add daisukes.roots dummy
scoreboard objectives add daisukes.roots_r dummy
scoreboard objectives add daisukes.roots_l dummy
scoreboard objectives add daisukes.roots_c dummy
scoreboard objectives add daisukes.roots_t dummy
scoreboard objectives add daisukes.roots_p dummy
scoreboard objectives add daisukes.roots_n dummy
scoreboard objectives add daisukes.roots_s dummy
scoreboard objectives add daisukes.roots_v dummy
scoreboard objectives add daisukes.roots_z dummy
scoreboard objectives add daisukes.roots_q dummy
scoreboard objectives add daisukes.roots_mw minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add daisukes.roots_ms minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add daisukes.roots_mo minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add daisukes.roots_mu minecraft.custom:minecraft.walk_under_water_one_cm

# ===== DURESA DE LES ARRELS: canvia aquest numero =====
# Quants ticks has d'estirar la corda mes tensa perque es trenqui (20 ticks = 1 s). Com mes alt, mes dures.
# (30 = 1,5 s per arrel; abans eren 12 = 0,6 s). Encara que siguin molt dures, als 15 s et deixen anar.
scoreboard players set #tough daisukes.roots 30

scoreboard players set #time daisukes.roots 0
scoreboard players set #every daisukes.roots 200
scoreboard players set #wait daisukes.roots 160
scoreboard players set #ids daisukes.roots 0
scoreboard players set #round daisukes.roots 0
scoreboard players set #bound daisukes.roots 0
scoreboard players set #2 daisukes.roots 2
scoreboard players set #4 daisukes.roots 4
scoreboard players set #5 daisukes.roots 5

# Entrada: arrels que treuen el cap del terra al voltant de cadascu
execute as @a at @s run function daisukes:modifiers/roots/intro
