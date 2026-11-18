# Atura el repte: es desactiven els modificadors actius i ja no en surten mes.
# Ho fan servir debug/stop (torna amb Start), victory/start i defeat/start (fins a una partida nova) i
# engine/new_game. Queda aturat tambe en tornar a obrir el mon o amb /reload (core/load)
scoreboard players set #engine_active daisukes.engine 0
scoreboard players set #intro daisukes.engine 0
function daisukes:engine/clear
