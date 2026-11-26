# Macro: {o}. Com a jugador: el que ha picat d'aquest bloc passa a #mn i l'objectiu torna a buit
$scoreboard players operation #mn daisukes.km += @s $(o)
$scoreboard players reset @s $(o)
