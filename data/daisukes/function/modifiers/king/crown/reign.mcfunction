# Com a corona sobre el cap del Rei, cada tick
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id

# Ja no va sobre cap monstre: el Rei ha esclatat, s'ha amagat dins la pedra, s'ha esvait... o l'han curat
execute unless predicate daisukes:king/on_monster run return run function daisukes:modifiers/king/crown/vanished

# El Rei s'esta morint (vida 0): regicidi!
execute if predicate daisukes:king/king_dying run return run function daisukes:modifiers/king/crown/regicide

# El Rei s'ha convertit (zombi ofegat, piglin zombificat...): el monstre nou s'ha quedat la corona, i la cort
execute on vehicle unless score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/ruler/adopt
