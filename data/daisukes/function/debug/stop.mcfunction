# Atura el repte: es desactiven els modificadors i ja no en surten mes fins a /reload o /function daisukes:reset
# /function daisukes:debug/stop
scoreboard players set #engine_active daisukes.engine 0
scoreboard players set #intro daisukes.engine 0
function daisukes:engine/deactivate_execute

data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts
bossbar set daisukes:countdown visible false
scoreboard players set #reveal daisukes.timer 0

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge stopped", "color": "gray"}]
