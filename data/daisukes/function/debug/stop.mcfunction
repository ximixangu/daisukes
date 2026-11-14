# Atura el repte: es desactiven els modificadors i ja no en surten mes fins a /reload o /function daisukes:reset
# /function daisukes:debug/stop
function daisukes:engine/stop

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge stopped", "color": "gray"}]
