# Presentacio del repte: el primer tick que el motor avanca amb algu connectat despres de
# Start al menu, /function daisukes:start o daisukes:reset (engine/begin). En carregar el mon o amb /reload ja no surt.
# Titol amb el rugit del drac de l'End; quan el titol ha marxat, compte enrere de 5 s i primer modificador
scoreboard players set #intro daisukes.engine 0

title @a times 5t 3s 2s
title @a subtitle {"text": "Daisuke's", "color": "dark_red"}
title @a title {"text": "Challenge Mode", "color": "red"}
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1

# El titol dura 105 ticks (5 + 60 + 40); just quan acaba comenca el compte enrere (els ultims 100 ticks).
# Es torna a calcular aqui perque des d'engine/begin pot haver passat molta estona (servidor buit)
scoreboard players operation #timer daisukes.timer = #timer_threshold daisukes.timer
scoreboard players remove #timer daisukes.timer 206
