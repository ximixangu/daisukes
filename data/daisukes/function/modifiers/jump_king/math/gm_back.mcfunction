# Com al jugador en espectador: torna al mode #gm. Al creatiu, passant per supervivencia (l'espectador el deixaria
# volant)
execute if score #gm daisukes.jk matches 1 run return run gamemode adventure
gamemode survival
execute if score #gm daisukes.jk matches 2 run gamemode creative
