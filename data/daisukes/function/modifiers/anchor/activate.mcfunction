# Anchored: de tant en tant cau una ancora al costat d'un jugador i l'encadena a l'aire (no pot picar, construir ni
# pegar, pero si que rep mal). Per trencar la cadena, cadascu llenca l'objecte que li brilla, de la barra rapida si
# pot ser (Q): el de l'encadenat trenca 1 baula i el d'un company, 2. Mes baules i ancores mes seguides amb el temps.
#  daisukes.anchor: valors globals (#...) i numero de l'ancorada a cada entitat i a l'encadenat
#  daisukes.anchor_i: numero de cada anella i de cada baula de la cadena
#  daisukes.anchor_t: temps que li queda a una anella que esclata
scoreboard objectives add daisukes.anchor dummy
scoreboard objectives add daisukes.anchor_i dummy
scoreboard objectives add daisukes.anchor_t dummy
scoreboard players set #2 daisukes.anchor 2
scoreboard players set #3 daisukes.anchor 3
scoreboard players set #5 daisukes.anchor 5
scoreboard players set #10 daisukes.anchor 10
scoreboard players set #50 daisukes.anchor 50
scoreboard players set #52 daisukes.anchor 52
scoreboard players set #1000 daisukes.anchor 1000

# Valors (ANCHOR.md): primera ancora als 5 s; despres, 20 s de pausa i 5 baules (stage les puja)
scoreboard players set #time daisukes.anchor 0
scoreboard players set #phase daisukes.anchor 0
scoreboard players set #event daisukes.anchor 0
scoreboard players set #wait daisukes.anchor 100
scoreboard players set #every daisukes.anchor 400
scoreboard players set #total daisukes.anchor 10
scoreboard players set #sweep daisukes.anchor 0
scoreboard players set #pulse daisukes.anchor -1
scoreboard players set #burst daisukes.anchor 0
data modify storage daisukes:anchor m set value {n: 0, i: 0, last: "minecraft:air"}

# Barra discreta de dalt: nomes surt mentre algu esta encadenat
bossbar add daisukes:anchor {"text": "⚓"}
bossbar set daisukes:anchor color blue
bossbar set daisukes:anchor style progress
bossbar set daisukes:anchor visible false

# Entrada: una campana de vaixell i, al voltant de cada jugador, sis cadenes que surten de terra una darrere
# l'altra i s'hi tornen a enfonsar (intro_step)
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.8 0.7
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/anchor/intro
scoreboard players operation @e[type=minecraft:block_display,tag=daisukes.anchor_intro] daisukes.anchor = #event daisukes.anchor
