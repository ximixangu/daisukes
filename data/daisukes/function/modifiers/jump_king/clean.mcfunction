# Com al jugador: res de Jump King. El perdo de la caiguda, nomes si ja toca a terra
attribute @s minecraft:jump_strength modifier remove daisukes:jump_king
attribute @s minecraft:movement_speed modifier remove daisukes:jump_king
attribute @s minecraft:scale modifier remove daisukes:jump_king
execute if items entity @s saddle *[minecraft:custom_data~{daisukes_jk:{}}] run item replace entity @s saddle with minecraft:air
tag @s remove daisukes.jk_ok
tag @s remove daisukes.jk_off
tag @s remove daisukes.jk_lock
tag @s remove daisukes.jk_air
tag @s remove daisukes.jk_top
execute if predicate daisukes:jump_king/on_ground run function daisukes:modifiers/jump_king/fall_end
