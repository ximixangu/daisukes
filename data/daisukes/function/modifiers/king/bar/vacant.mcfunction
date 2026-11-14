# Macro {id}. Tron buit: la barra compta l'interregne
$bossbar set daisukes:king_$(id) name ["", {"text": "♚ ", "color": "gold"}, {"text": "The throne is empty", "color": "white"}]
$bossbar set daisukes:king_$(id) color white
$execute store result bossbar daisukes:king_$(id) max run scoreboard players get #interregnum daisukes.king
