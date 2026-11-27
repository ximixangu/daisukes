# Macro {h}: com al jugador del salt, la caiguda segura creix h blocs
attribute @s minecraft:safe_fall_distance modifier remove daisukes:jump_king
$attribute @s minecraft:safe_fall_distance modifier add daisukes:jump_king $(h) add_value
tag @s add daisukes.jk_fall
