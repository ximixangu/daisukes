# Ha mort un jugador (engine/tick): repte fallit. S'aturen els modificadors i ja no en surten mes, tampoc en
# tornar a obrir el mon, fins a una partida nova (New game al menu, o /function daisukes:reset).
# Si al menu s'ha triat que morir no acaba el repte (#death_ends), no es crida (engine/tick)
# En un servidor amb Fahare, el mon es reinicia sol amb una altra llavor (core/world_reset)
scoreboard players set #defeat daisukes.engine 1
function daisukes:engine/stop

# Hi ha Fahare? (la dimensio fahare:limbo nomes existeix amb Fahare)
scoreboard players set #fahare daisukes.math 0
execute in fahare:limbo run scoreboard players set #fahare daisukes.math 1

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Challenge failed: ", "color": "red", "bold": true}, {"selector": "@a[scores={daisukes.deaths=1..}]", "color": "gold"}, {"text": " died", "color": "gray"}]
execute if score #fahare daisukes.math matches 0 run tellraw @a ["", {"text": "   Modifiers stopped. ", "color": "gray"}, {"text": "[New game]", "color": "gold", "click_event": {"action": "show_dialog", "dialog": "daisukes:new_game"}, "hover_event": {"action": "show_text", "value": "Start the challenge again from zero"}}]
execute if score #fahare daisukes.math matches 1 run tellraw @a ["", {"text": "   Modifiers stopped. A new world with a new seed is on its way", "color": "gray"}]

# YOU DIED a l'estil Dark Souls: apareix a poc a poc, es queda uns segons i marxa a poc a poc
title @a reset
title @a times 1s 4s 2s
title @a title {"text": "YOU DIED", "color": "dark_red"}

# So de derrota: un cop greu i fosc amb una cua llarga (portal de l'End) i una caiguda greu (ancora de reaparicio)
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.6 0.6
execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 0.5
