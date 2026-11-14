# El drac de l'End ha mort: repte superat. Nomes un cop per partida (victory/watch)
scoreboard players set #slain daisukes.victory 0
execute if score #victory daisukes.engine matches 1 run tag @a remove daisukes.dragon_slayer
execute if score #victory daisukes.engine matches 1 run return 0
scoreboard players set #victory daisukes.engine 1

# Fora tots els modificadors i ja no en surten mes. Queda aturat tambe amb /reload o en tornar a obrir
# el mon (core/load mira #victory), fins que es comenci una partida nova amb /function daisukes:reset
function daisukes:engine/stop

# Temps de partida (nomes avanca amb el repte en marxa, aixi que es el temps final)
scoreboard players operation #secs daisukes.math = #elapsed daisukes.engine
scoreboard players operation #secs daisukes.math /= #20 daisukes.math
scoreboard players operation #mins daisukes.math = #secs daisukes.math
scoreboard players operation #mins daisukes.math /= #60 daisukes.math
scoreboard players operation #hours daisukes.math = #mins daisukes.math
scoreboard players operation #hours daisukes.math /= #60 daisukes.math
scoreboard players operation #mins daisukes.math %= #60 daisukes.math
scoreboard players operation #secs daisukes.math %= #60 daisukes.math

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "VICTORY! ", "color": "gold", "bold": true}, {"text": "The Ender Dragon has been defeated", "color": "yellow"}]
execute if entity @a[tag=daisukes.dragon_slayer] run tellraw @a ["", {"text": "   Final blow: ", "color": "gray"}, {"selector": "@a[tag=daisukes.dragon_slayer]", "color": "gold"}]
tag @a remove daisukes.dragon_slayer
execute if score #hours daisukes.math matches 1.. run tellraw @a ["", {"text": "   Challenge completed in ", "color": "gray"}, {"score": {"name": "#hours", "objective": "daisukes.math"}, "color": "white"}, {"text": " h ", "color": "gray"}, {"score": {"name": "#mins", "objective": "daisukes.math"}, "color": "white"}, {"text": " min ", "color": "gray"}, {"score": {"name": "#secs", "objective": "daisukes.math"}, "color": "white"}, {"text": " s", "color": "gray"}]
execute unless score #hours daisukes.math matches 1.. run tellraw @a ["", {"text": "   Challenge completed in ", "color": "gray"}, {"score": {"name": "#mins", "objective": "daisukes.math"}, "color": "white"}, {"text": " min ", "color": "gray"}, {"score": {"name": "#secs", "objective": "daisukes.math"}, "color": "white"}, {"text": " s", "color": "gray"}]
tellraw @a ["", {"text": "   Modifiers stopped. New game: ", "color": "gray"}, {"text": "/function daisukes:reset", "color": "white"}]

# Titol, fanfara, petards i musica
function daisukes:victory/celebrate
