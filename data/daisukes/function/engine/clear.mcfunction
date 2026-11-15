# Que no quedi res de la tirada anterior: es desactiven els modificadors actius i s'amaga la bossbar.
# Ho fan servir engine/stop i core/load (quan no continua cap partida en marxa)
execute if data storage daisukes:state active[0] run function daisukes:engine/deactivate_execute
data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts
bossbar set daisukes:countdown visible false
scoreboard players set #reveal daisukes.timer 0
