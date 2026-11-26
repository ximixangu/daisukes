# Com a jugador gran que no va ajupit: una trepitjada cada zancada (1.2 blocs x mida; caminant o corrent, no saltant)
scoreboard players operation @s daisukes.km_cm += @s daisukes.km_walk
scoreboard players operation @s daisukes.km_cm += @s daisukes.km_run
function daisukes:modifiers/katamari/quiet
scoreboard players operation #st daisukes.km = @s daisukes.km_s
scoreboard players operation #st daisukes.km *= #stride daisukes.km
scoreboard players operation #st daisukes.km /= #100 daisukes.km
