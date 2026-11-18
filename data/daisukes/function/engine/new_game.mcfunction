# Partida nova des de zero (menu/new_game i /function daisukes:reset): s'atura el que hi hagi en marxa i tot es
# torna a preparar com en un mon nou (core/load): temps a 0, fites, Nether i End sense visitar, sense victoria ni
# derrota. Queda SENSE comencar. La configuracio del menu i els modificadors desactivats no es toquen
function daisukes:engine/stop
scoreboard players set #initialized daisukes.engine 0

# La pestanya d'avancaments "Challenge Mode" torna a tenir tots els modificadors per descobrir
# (l'arrel es torna a donar sola al tick seguent)
advancement revoke @a from daisukes:gui/root

function daisukes:core/load
