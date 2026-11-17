# El bloc on para el raig d'un bloc posat. Si n'hi havia diversos de possibles, nomes si es un d'ells
# (#tie 1: dels del tipus de la ma; 2: de qualsevol)
execute if score #tie daisukes.earth matches 1 unless entity @e[type=minecraft:marker,tag=daisukes.earth_cand,tag=daisukes.earth_ctype,distance=..0.1] run return 0
execute if score #tie daisukes.earth matches 2 unless entity @e[type=minecraft:marker,tag=daisukes.earth_cand,distance=..0.1] run return 0
function daisukes:modifiers/living_earth/place_mark
