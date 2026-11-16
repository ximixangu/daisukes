# Com al jugador: el seu creaking surt a 7-10 blocs, darrere seu (fins a 30 intents). En pacific no n'hi ha.
# Un creaking es "desperta" quan algu el veu a menys de 12 blocs: si et gires i el veus, des d'aleshores et persegueix
execute store result score #d daisukes.heart run difficulty
execute if score #d daisukes.heart matches 0 run return 0
scoreboard players set #ok daisukes.heart 0
scoreboard players set #try daisukes.heart 0
function daisukes:modifiers/heartbound/haunt_try
