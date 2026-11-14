# Macro {id}. Barra nova de la cort, sense ningu que la vegi fins que hi hagi Rei (bar/update). Queda apuntada a
# la llista de barres vives (bar/sweep)
$bossbar add daisukes:king_$(id) ""
$bossbar set daisukes:king_$(id) style progress
$bossbar set daisukes:king_$(id) color yellow
$data modify storage daisukes:king bars append value {id: $(id)}
