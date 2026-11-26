# Recompensa de l'avancament katamari/land (aterra d'una caiguda o d'un salt de 2 blocs o mes): si es gran i no va
# ajupit, cop sec i pols al voltant dels peus. Es revoca sol; si Katamari no es actiu, no fa res mes
advancement revoke @s only daisukes:katamari/land
execute unless data storage daisukes:state {active: ["katamari"]} run return 0
execute if score #steps daisukes.km matches ..0 run return 0
execute unless score @s daisukes.km_s >= #steps daisukes.km run return 0
execute if predicate daisukes:katamari/sneaking run return 0
scoreboard players operation #r daisukes.km = @s daisukes.km_s
scoreboard players operation #r daisukes.km *= #3 daisukes.km
scoreboard players operation #r daisukes.km /= #10 daisukes.km
execute store result storage daisukes:katamari fx.r double 0.01 run scoreboard players get #r daisukes.km
execute store result storage daisukes:katamari fx.vol double 0.01 run scoreboard players get @s daisukes.km_vol
execute store result storage daisukes:katamari fx.pitch double 0.01 run scoreboard players get @s daisukes.km_pit
function daisukes:modifiers/katamari/fx/land_play with storage daisukes:katamari fx
