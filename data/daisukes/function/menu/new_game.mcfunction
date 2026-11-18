# Partida nova des del menu (confirmada a daisukes:new_game): tot torna a zero i el repte queda SENSE comencar,
# amb tothom quiet, fins que algu premi Start. La configuracio i els modificadors triats es queden igual.
# 2 s despres surt l'explicacio amb l'enllac al menu (core/welcome)
function daisukes:engine/new_game
tellraw @a ["", {"text": "» ", "color": "gold", "bold": true}, {"selector": "@s", "color": "white"}, {"text": " started a new game", "color": "gray"}]
dialog show @s daisukes:menu
