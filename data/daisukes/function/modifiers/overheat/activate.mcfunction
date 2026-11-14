# Overheat: fora de l'aigua t'escalfes; si la barra s'omple, cremes fins que toquis aigua (o un cauldron amb aigua)
#  heat: escalfor de cada jugador (0 fred, #max crema) i valors globals (#...)
#  heat_b: ticks que porta cremant (0 = no crema) | heat_w: 0 sec, 1 a l'aigua, 2 a l'aigua amb campaneta pendent
#  heat_v: aspecte de la barra (0 amagada, 1-5, veure bar/set) | heat_id: barra de cada jugador | heat_d: morts

# Restes d'una activacio anterior, barres incloses (normalment no n'hi ha)
execute if score #ids daisukes.heat matches 1.. run function daisukes:modifiers/overheat/bar/remove_all
scoreboard objectives remove daisukes.heat
scoreboard objectives remove daisukes.heat_b
scoreboard objectives remove daisukes.heat_w
scoreboard objectives remove daisukes.heat_v
scoreboard objectives remove daisukes.heat_id
scoreboard objectives remove daisukes.heat_d

scoreboard objectives add daisukes.heat dummy
scoreboard objectives add daisukes.heat_b dummy
scoreboard objectives add daisukes.heat_w dummy
scoreboard objectives add daisukes.heat_v dummy
scoreboard objectives add daisukes.heat_id dummy
scoreboard objectives add daisukes.heat_d deathCount

# =====================================================================
#  CONFIGURACIO (en ticks, 20 = 1 s)
# =====================================================================
# Temps fora de l'aigua fins que se sobreescalfa i comenca a cremar
scoreboard players set #max daisukes.heat 300
# Temps a l'aigua per refredar-se del tot (des de la barra plena)
scoreboard players set #cool_time daisukes.heat 50
# El mal de cremar es a burn (1 cor per segon)
# =====================================================================

scoreboard players set #2 daisukes.heat 2
scoreboard players set #4 daisukes.heat 4
scoreboard players set #5 daisukes.heat 5
scoreboard players set #20 daisukes.heat 20

# Llindars: a partir de la meitat sua (#warm), del 80 % fumeja (#hot), i del 20 % entrar a l'aigua fa "tsss" (#hiss)
scoreboard players operation #warm daisukes.heat = #max daisukes.heat
scoreboard players operation #warm daisukes.heat /= #2 daisukes.heat
scoreboard players operation #hot daisukes.heat = #max daisukes.heat
scoreboard players operation #hot daisukes.heat *= #4 daisukes.heat
scoreboard players operation #hot daisukes.heat /= #5 daisukes.heat
scoreboard players operation #hiss daisukes.heat = #max daisukes.heat
scoreboard players operation #hiss daisukes.heat /= #5 daisukes.heat

# Escalfor que es perd per tick a l'aigua
scoreboard players operation #cool daisukes.heat = #max daisukes.heat
scoreboard players operation #cool daisukes.heat /= #cool_time daisukes.heat
execute if score #cool daisukes.heat matches ..0 run scoreboard players set #cool daisukes.heat 1

# Barres creades (cada jugador te la seva quan el tick el troba per primer cop)
scoreboard players set #ids daisukes.heat 0
