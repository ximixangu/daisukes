# Com al jugador: #gm, el seu mode de joc (0 supervivencia, 1 aventura, 2 creatiu)
scoreboard players set #gm daisukes.jk 0
execute if predicate daisukes:jump_king/adventure run scoreboard players set #gm daisukes.jk 1
execute if predicate daisukes:jump_king/creative run scoreboard players set #gm daisukes.jk 2
