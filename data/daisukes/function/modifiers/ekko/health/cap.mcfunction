# Com al jugador: vida maxima x T/M durant 2 ticks. La vida no hi cap i baixa a T, i la cura no en passa. Despres
# torna la maxima de sempre i la vida es queda a T
# T/M en milionesimes, sense desbordar (T i M arriben a 10.240.000): divisio llarga de 100 en 100
scoreboard players operation #n daisukes.ek = #t daisukes.ek
scoreboard players operation #n daisukes.ek *= #100 daisukes.ek
scoreboard players operation #f daisukes.ek = #n daisukes.ek
scoreboard players operation #f daisukes.ek /= #m daisukes.ek
scoreboard players operation #n daisukes.ek %= #m daisukes.ek
scoreboard players operation #n daisukes.ek *= #100 daisukes.ek
scoreboard players operation #q daisukes.ek = #n daisukes.ek
scoreboard players operation #q daisukes.ek /= #m daisukes.ek
scoreboard players operation #n daisukes.ek %= #m daisukes.ek
scoreboard players operation #f daisukes.ek *= #100 daisukes.ek
scoreboard players operation #f daisukes.ek += #q daisukes.ek
scoreboard players operation #n daisukes.ek *= #100 daisukes.ek
scoreboard players operation #n daisukes.ek /= #m daisukes.ek
scoreboard players operation #f daisukes.ek *= #100 daisukes.ek
scoreboard players operation #f daisukes.ek += #n daisukes.ek
# Modificador T/M - 1, i una deumilesima menys perque els arrodoniments no la deixin per sobre de T
scoreboard players remove #f daisukes.ek 1000100
execute store result storage daisukes:ekko cap.v double 0.000001 run scoreboard players get #f daisukes.ek
function daisukes:modifiers/ekko/health/cap_set with storage daisukes:ekko cap
scoreboard players set @s daisukes.ek_hp 2
tag @s add daisukes.ek_cap
