# #ang (decimes de grau, qualsevol) -> #sin i #cos (deumilesimes), al grau mes proper. Formula de Bhaskara:
# sin x = 4x(180-x) / (40500 - x(180-x)), amb x entre 0 i 180 (s'equivoca menys de 2 milesimes)
scoreboard players add #ang daisukes.jk 5
scoreboard players operation #ang daisukes.jk /= #10 daisukes.jk
scoreboard players operation #x daisukes.jk = #ang daisukes.jk
function daisukes:modifiers/jump_king/math/sin
scoreboard players operation #sin daisukes.jk = #r daisukes.jk
scoreboard players operation #x daisukes.jk = #ang daisukes.jk
scoreboard players add #x daisukes.jk 90
function daisukes:modifiers/jump_king/math/sin
scoreboard players operation #cos daisukes.jk = #r daisukes.jk
