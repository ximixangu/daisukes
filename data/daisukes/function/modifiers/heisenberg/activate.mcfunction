scoreboard objectives add daisukes.heisenberg dummy
scoreboard objectives add daisukes.heis_x dummy
scoreboard objectives add daisukes.heis_y dummy
scoreboard objectives add daisukes.heis_z dummy
scoreboard objectives add daisukes.heis_wait dummy
scoreboard objectives add daisukes.heis_gap dummy

# =====================================================================
#  CONFIGURACIO (en ticks, 20 = 1 s)
#  Quiet, el primer salt arriba al cap de #first. Cada salt seguent arriba #less abans
#  que l'anterior, fins a un salt cada #min. Amb 20 / 2 / 2:
#  1 s, 0.9 s, 0.8 s ... 0.1 s, i a partir d'aqui 10 salts per segon fins que es mogui
# =====================================================================
scoreboard players set #first daisukes.heisenberg 20
# Minim 1
scoreboard players set #less daisukes.heisenberg 3
# Minim 1 i mes petit que #first
scoreboard players set #min daisukes.heisenberg 2
# Ticks quiet fins al primer salt. Els seguents comencen a #first - #less i es van escurçant
scoreboard players set #first_wait daisukes.heisenberg 2
# =====================================================================

scoreboard players set #9 daisukes.heisenberg 9
