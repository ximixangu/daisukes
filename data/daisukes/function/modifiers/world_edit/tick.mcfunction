# Rellotge d'1 s: un cop per segon es tornen a buscar caixes, per si n'han tornat a carregar que esperaven
scoreboard players add #clock daisukes.we 1
execute if score #clock daisukes.we matches 20.. run scoreboard players set #clock daisukes.we 0

# Jugadors (no espectadors): qui acaba d'arribar espera 3 s; a qui se li acaba el compte, parella nova al seu voltant
execute as @a[gamemode=!spectator] unless score @s daisukes.we_t = @s daisukes.we_t run scoreboard players set @s daisukes.we_t 60
scoreboard players remove @a[gamemode=!spectator,scores={daisukes.we_t=1..}] daisukes.we_t 1
execute as @a[gamemode=!spectator,scores={daisukes.we_t=..0}] at @s run function daisukes:modifiers/world_edit/pick/start

# Caixes, nomes si n'hi ha (#live)
execute if score #clock daisukes.we matches 0 if entity @e[type=minecraft:marker,tag=daisukes.we_box,limit=1] run scoreboard players set #live daisukes.we 1
execute if score #live daisukes.we matches 1.. run function daisukes:modifiers/world_edit/boxes
