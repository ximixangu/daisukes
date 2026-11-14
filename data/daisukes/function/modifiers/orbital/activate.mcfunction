# Orbital: orbes que t'envolten i s'han de picar abans que esclatin
#  orb: valors globals | orb_id: jugador / orba (i les seves pells) | orb_owner: de qui es l'orba
#  orb_age, orb_life: edat i fusible (ticks) | orb_color: contorn | orb_hp: cops que aguanta | orb_size: mida de la pell
#  orb_timer: ticks fins a la seguent orba d'aquest jugador
scoreboard objectives add daisukes.orb dummy
scoreboard objectives add daisukes.orb_id dummy
scoreboard objectives add daisukes.orb_owner dummy
scoreboard objectives add daisukes.orb_age dummy
scoreboard objectives add daisukes.orb_life dummy
scoreboard objectives add daisukes.orb_color dummy
scoreboard objectives add daisukes.orb_hp dummy
scoreboard objectives add daisukes.orb_size dummy
scoreboard objectives add daisukes.orb_timer dummy
scoreboard players set #6 daisukes.orb 6
scoreboard players set #20 daisukes.orb 20
scoreboard players set #1000 daisukes.orb 1000

# Temps des que ha sortit (fa pujar la dificultat) i quants tipus d'orba poden sortir ja
scoreboard players set #time daisukes.orb 0
scoreboard players set #kinds daisukes.orb 6

# Entrada: les cinc orbes surten de cada jugador en estrella i es trenquen alhora
execute as @e[type=minecraft:player,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/orbital/intro
