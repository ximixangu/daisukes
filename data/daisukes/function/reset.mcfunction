# Comença una partida nova: temps jugat a 0, Nether i End sense visitar, i presentacio + tirada nova
# /function daisukes:reset
scoreboard players set #initialized daisukes.engine 0

# La pestanya d'avancaments "Challenge Mode" torna a tenir tots els modificadors per descobrir
# (l'arrel es torna a donar sola al tick seguent)
advancement revoke @a from daisukes:gui/root

function daisukes:core/load
