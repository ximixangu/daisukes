# Com al jugador: #j, la forca de salt que tindria sense Jump King (deumilesimes; la de sempre, 4199). 0: una altra
# cosa li treu el salt
attribute @s minecraft:jump_strength modifier remove daisukes:jump_king
execute store result score #j daisukes.jk run attribute @s minecraft:jump_strength get 10000
attribute @s minecraft:jump_strength modifier add daisukes:jump_king -1 add_multiplied_total
