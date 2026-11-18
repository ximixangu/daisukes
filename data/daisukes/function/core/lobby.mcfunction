# Repte sense comencar (mon nou, partida nova, o Fahare acaba de crear un mon nou): ningu es pot moure ni tocar res
# fins que algu premi Start al menu (core/freeze), i a la barra d'accions es recorda com obrir el menu. En creatiu i
# en espectador no. Quan comenca (o si la partida ja s'ha acabat), tothom torna a ser lliure (core/unfreeze).
# Ho crida core/tick
scoreboard players set #lobby daisukes.math 0
execute unless score #engine_active daisukes.engine matches 1 if score #elapsed daisukes.engine matches ..0 unless score #victory daisukes.engine matches 1 unless score #defeat daisukes.engine matches 1 run scoreboard players set #lobby daisukes.math 1

execute if score #lobby daisukes.math matches 1 as @a[tag=!daisukes.frozen,gamemode=!creative,gamemode=!spectator] run function daisukes:core/freeze
execute if score #lobby daisukes.math matches 1 as @a[tag=daisukes.frozen,gamemode=!survival,gamemode=!adventure] run function daisukes:core/unfreeze
execute if score #lobby daisukes.math matches 0 as @a[tag=daisukes.frozen] run function daisukes:core/unfreeze

# Recordatori cada 2 s: la tecla d'accions rapides (G, o la que tingui cadascu) i el menu de pausa
execute if score #lobby daisukes.math matches 0 run return 0
scoreboard players add #lobby_hint daisukes.timer 1
execute if score #lobby_hint daisukes.timer matches 40.. run scoreboard players set #lobby_hint daisukes.timer 0
execute if score #lobby_hint daisukes.timer matches 1 run title @a actionbar ["", {"text": "Waiting for the challenge to start", "color": "gray"}, {"text": "  ·  ", "color": "dark_gray"}, {"text": "Menu: ", "color": "gray"}, {"keybind": "key.quickActions", "color": "gold"}, {"text": " or the pause menu", "color": "gray"}]
