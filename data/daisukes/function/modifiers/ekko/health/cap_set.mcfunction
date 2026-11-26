# Macro {v}: com al jugador, el modificador que talla la vida maxima
attribute @s minecraft:max_health modifier remove daisukes:ekko
$attribute @s minecraft:max_health modifier add daisukes:ekko $(v) add_multiplied_total
