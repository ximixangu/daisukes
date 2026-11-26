# Com a cada jugador viu (@e) que no es espectador, als peus
execute unless score @s daisukes.km_s matches 1.. run function daisukes:modifiers/katamari/join
execute if score @s daisukes.km_dead matches 1.. run function daisukes:modifiers/katamari/died
execute if score @s daisukes.km_kills matches 1.. run function daisukes:modifiers/katamari/feed/kills
execute if score @s daisukes.km_ph = #clock daisukes.km run function daisukes:modifiers/katamari/second

# Aixafa el que troba, un tick si i un no (abans de mirar si s'ha encallat: potser aixi ja hi cap). Ajupit va de
# puntetes: no aixafa res i no se li senten les passes
execute if score #odd daisukes.km matches 0 if score @s daisukes.km_s matches 101.. unless predicate daisukes:katamari/sneaking run function daisukes:modifiers/katamari/crush/start

# Encallat (els ulls dins d'un bloc que ofega: pedra, terra...; no fulles ni vidre): s'encongeix un pas cada tick fins
# que hi torna a cabre
execute if score @s daisukes.km_s matches 101.. anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #daisukes:katamari/no_squeeze run return run function daisukes:modifiers/katamari/squeeze

# Creix un pas cada 2 ticks mentre la massa ho permeti
scoreboard players remove @s[scores={daisukes.km_cd=1..}] daisukes.km_cd 1
execute if score @s daisukes.km_cd matches ..0 if score @s daisukes.km_s < #max daisukes.km if score @s daisukes.km_mass >= @s daisukes.km_need run function daisukes:modifiers/katamari/grow/try

execute if predicate daisukes:katamari/sneaking run return run function daisukes:modifiers/katamari/quiet
execute if score #steps daisukes.km matches 1.. if score @s daisukes.km_s >= #steps daisukes.km run return run function daisukes:modifiers/katamari/steps
function daisukes:modifiers/katamari/quiet
