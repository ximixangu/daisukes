# Cada jugador te un numero (ek_id) i el seu eco el mateix. On era, en quina dimensio i quina vida tenia es guarda a
# daisukes:ekko echoes, no a l'eco: l'eco nomes es veu, i pot quedar en un chunk sense carregar
scoreboard objectives add daisukes.ek dummy
scoreboard objectives add daisukes.ek_id dummy
scoreboard objectives add daisukes.ek_t dummy
scoreboard objectives add daisukes.ek_cd dummy
scoreboard objectives add daisukes.ek_hp dummy
scoreboard objectives add daisukes.ek_gr dummy
scoreboard objectives add daisukes.ek_dead deathCount
scoreboard objectives add daisukes.ek_left minecraft.custom:minecraft.leave_game
team add daisukes.ekko

# ============================== CONFIGURACIO ==============================
# Segons des que deixes l'eco fins que hi tornes
scoreboard players set #delay daisukes.ek 5
# 1: en tornar, tens la vida que tenies llavors (la recuperes o la perds). 0: nomes et mou
scoreboard players set #health daisukes.ek 1
# Quants dels ultims segons fan tic-tac, un per segon (nomes el sents tu). 0: cap
scoreboard players set #ticks daisukes.ek 3
# Segons que has d'esperar, despres de tornar, per poder deixar un altre eco. 0: cap espera
scoreboard players set #cooldown daisukes.ek 0
# 1: un fil de punts blaus et lliga al teu eco. 0: sense fil
scoreboard players set #tether daisukes.ek 1
# Color de la silueta: blue, aqua, dark_aqua, dark_blue, light_purple, white... (les particules son a echo/thread,
# echo/make, echo/vanish, rewind i back: dust 0.33,0.33,1.0)
team modify daisukes.ekko color blue
# ==========================================================================

execute if score #delay daisukes.ek matches ..0 run scoreboard players set #delay daisukes.ek 1
execute if score #delay daisukes.ek matches 61.. run scoreboard players set #delay daisukes.ek 60
execute if score #ticks daisukes.ek matches ..-1 run scoreboard players set #ticks daisukes.ek 0
execute if score #ticks daisukes.ek > #delay daisukes.ek run scoreboard players operation #ticks daisukes.ek = #delay daisukes.ek
execute if score #cooldown daisukes.ek matches ..-1 run scoreboard players set #cooldown daisukes.ek 0
execute if score #cooldown daisukes.ek matches 61.. run scoreboard players set #cooldown daisukes.ek 60

scoreboard players set #2 daisukes.ek 2
scoreboard players set #4 daisukes.ek 4
scoreboard players set #20 daisukes.ek 20
scoreboard players set #30 daisukes.ek 30
scoreboard players set #100 daisukes.ek 100
scoreboard players operation #delay_t daisukes.ek = #delay daisukes.ek
scoreboard players operation #delay_t daisukes.ek *= #20 daisukes.ek
scoreboard players operation #ticks_t daisukes.ek = #ticks daisukes.ek
scoreboard players operation #ticks_t daisukes.ek *= #20 daisukes.ek
scoreboard players operation #cooldown_t daisukes.ek = #cooldown daisukes.ek
scoreboard players operation #cooldown_t daisukes.ek *= #20 daisukes.ek
scoreboard players set #next daisukes.ek 0
scoreboard players set #clock daisukes.ek 0

# La silueta no empeny ni l'empenyen, i no ensenya cap nom
team modify daisukes.ekko collisionRule never
team modify daisukes.ekko nametagVisibility never
data modify storage daisukes:ekko echoes set value []

execute as @e[type=minecraft:player] at @s run function daisukes:modifiers/ekko/intro
