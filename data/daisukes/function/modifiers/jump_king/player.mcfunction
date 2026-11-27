# Com a cada jugador viu, on es. Si ha mort o ha tornat a entrar, el que tenia a mitges es desfa
execute if score @s daisukes.jk_dead matches 1.. run function daisukes:modifiers/jump_king/drop
execute if score @s daisukes.jk_left matches 1.. run function daisukes:modifiers/jump_king/drop
execute if entity @s[gamemode=spectator] run return run function daisukes:modifiers/jump_king/spectator
# Encara no se sap si pot fer servir Jump King: es prova. Si no pot (daisukes.jk_off), salta com sempre
execute unless entity @s[tag=daisukes.jk_ok] unless entity @s[tag=daisukes.jk_off] run function daisukes:modifiers/jump_king/setup
execute unless entity @s[tag=daisukes.jk_ok] run return 0
# L'espai ja no fa saltar (si ja ho te, no passa res; aixi tambe qui reapareix). Jump Boost el faria saltironar en
# premer-lo: es treu
attribute @s minecraft:jump_strength modifier add daisukes:jump_king -1 add_multiplied_total
execute if predicate daisukes:jump_king/jump_boost run effect clear @s minecraft:jump_boost

execute if score @s daisukes.jk_st matches 1.. run return run function daisukes:modifiers/jump_king/stun
execute if score @s daisukes.jk_t matches 1.. run function daisukes:modifiers/jump_king/flight
# Perdo de caiguda d'un salt de quan el modificador es va desactivar
execute if entity @s[tag=daisukes.jk_fall] unless score @s daisukes.jk_t matches 1.. if predicate daisukes:jump_king/on_ground run function daisukes:modifiers/jump_king/fall_end
execute if score @s daisukes.jk_c matches 1.. run return run function daisukes:modifiers/jump_king/charge
# Sense el salt premut, ja pot tornar a carregar. Premut (o mantingut en tocar a terra), mira si pot carregar
execute unless predicate daisukes:jump_king/jump run tag @s remove daisukes.jk_lock
execute unless predicate daisukes:jump_king/jump run return 0
execute unless entity @s[tag=daisukes.jk_lock] run function daisukes:modifiers/jump_king/try
