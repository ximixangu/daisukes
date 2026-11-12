# Candidat triat a l'atzar
$data modify storage daisukes:temp macro_pick.id set from storage daisukes:temp candidates[$(index)].id

# S'activa en aquesta tirada
data modify storage daisukes:state active append from storage daisukes:temp macro_pick.id

data modify storage daisukes:temp macro_key.key set from storage daisukes:temp macro_pick.id
function daisukes:engine/append_text with storage daisukes:temp macro_key

# Es treu de la pool i dels candidats, i dels candidats tambe se'n treuen tots els incompatibles
function daisukes:engine/incompat/exclude with storage daisukes:temp macro_pick
