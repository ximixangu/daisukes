# Com al jugador: empenta #L a l'esquerra, #U amunt i #F endavant (deumilesimes, eixos locals). Cada eix fa servir
# dos encanteris: un de gruixut (nivell 128: 0; cada nivell, 0,1) i un de fi (cada nivell, 0,001)
scoreboard players operation #n daisukes.jk = #L daisukes.jk
function daisukes:modifiers/jump_king/math/level
scoreboard players operation #lc daisukes.jk = #q daisukes.jk
scoreboard players operation #lf daisukes.jk = #r daisukes.jk
scoreboard players operation #n daisukes.jk = #U daisukes.jk
function daisukes:modifiers/jump_king/math/level
scoreboard players operation #uc daisukes.jk = #q daisukes.jk
scoreboard players operation #uf daisukes.jk = #r daisukes.jk
scoreboard players operation #n daisukes.jk = #F daisukes.jk
function daisukes:modifiers/jump_king/math/level
scoreboard players operation #fc daisukes.jk = #q daisukes.jk
scoreboard players operation #ff daisukes.jk = #r daisukes.jk
function daisukes:modifiers/jump_king/math/kick
