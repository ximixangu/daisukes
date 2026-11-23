# Com a mina que s'encen (en ordre, de la mes propera al jugador a la mes llunyana): esclatara d'aqui a #f ticks, i
# la seguent #chain ticks mes tard
tag @s add daisukes.tk_lit
scoreboard players operation @s daisukes.tk = #f daisukes.tk
scoreboard players operation #f daisukes.tk += #chain daisukes.tk
scoreboard players add #lit daisukes.tk 1
function daisukes:modifiers/tank/mine/red
