# Atura el repte: es desactiven els modificadors actius i ja no en surten mes.
# Ho fan servir debug/stop (torna amb /reload) i victory/start (quan mor el drac, fins a /function daisukes:reset)
scoreboard players set #engine_active daisukes.engine 0
scoreboard players set #intro daisukes.engine 0
function daisukes:engine/deactivate_execute

data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts
bossbar set daisukes:countdown visible false
scoreboard players set #reveal daisukes.timer 0
