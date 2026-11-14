# Blind Spot: carregues de TNT invisibles a tot arreu al voltant dels jugadors (n'apareixen de noves a mesura que
# us moveu). Ajupit les reveles a 4 blocs; caminant, a 1,5. Queden marcades 10 s. Qui les trepitja les encen.
#  daisukes.bspot: edat de cada carrega, lloc a la cadena (encesa) i valors globals (#...)
#  daisukes.bspot_fx: carrega apagada = temps que queda marcada; encesa = metxa
scoreboard objectives add daisukes.bspot dummy
scoreboard objectives add daisukes.bspot_fx dummy
scoreboard players set #20 daisukes.bspot 20

# Valors (BLIND_SPOT.md): com a molt #cap carregues a 16 blocs de cada jugador (puja a stage). Cada 2 s se n'hi
# afegeixen fins a 4 a 6-16 blocs, a tot el voltant
scoreboard players set #time daisukes.bspot 0
scoreboard players set #cap daisukes.bspot 40
scoreboard players set #fill daisukes.bspot 0

# Entrada: un corn i el camp ja ple al voltant de cadascu
execute as @e[type=minecraft:player] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 1 0.9
scoreboard players set #try daisukes.bspot 24
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/blind_spot/fill_loop
