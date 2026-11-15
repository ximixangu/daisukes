# Atura el repte: es desactiven els modificadors i ja no en surten mes, tampoc en tornar a obrir el mon
# o amb /reload. /function daisukes:start el continua amb els mateixos modificadors i el mateix temps
# fins al canvi; partida nova amb /function daisukes:reset
# /function daisukes:debug/stop

# Es desen els modificadors actius (i els seus textos) perque start els torni a posar (engine/restore)
execute if score #engine_active daisukes.engine matches 1 run data remove storage daisukes:state stopped
execute if score #engine_active daisukes.engine matches 1 run data modify storage daisukes:state stopped.active set from storage daisukes:state active
execute if score #engine_active daisukes.engine matches 1 run data modify storage daisukes:state stopped.display_texts set from storage daisukes:temp display_texts
execute if score #engine_active daisukes.engine matches 1 run data modify storage daisukes:state stopped.chat_texts set from storage daisukes:temp chat_texts

function daisukes:engine/stop

tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Daisuke's Challenge stopped", "color": "gray"}, {"text": " (/function daisukes:start to resume)", "color": "dark_gray"}]
