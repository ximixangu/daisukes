execute if score #deaf daisukes.hush matches 1.. run scoreboard players remove #deaf daisukes.hush 1
execute if score #sink daisukes.hush matches 1 run kill @e[type=block_display,tag=daisukes.hush_mouth]
execute if score #sink daisukes.hush matches 1.. run scoreboard players remove #sink daisukes.hush 1

# El silenci buida la barra: 1 per jugador viu i tick
execute store result score #players daisukes.hush if entity @e[type=player,gamemode=!spectator]
scoreboard players operation #noise daisukes.hush -= #players daisukes.hush
execute if score #noise daisukes.hush matches ..-1 run scoreboard players set #noise daisukes.hush 0
execute store result bossbar daisukes:hush value run scoreboard players get #noise daisukes.hush

execute if score #noise daisukes.hush matches ..499 run bossbar set daisukes:hush color green
execute if score #noise daisukes.hush matches 500..799 run bossbar set daisukes:hush color yellow
execute if score #noise daisukes.hush matches 800.. run bossbar set daisukes:hush color red
execute if score #ring daisukes.hush matches 0 run bossbar set daisukes:hush players @a
execute if score #ring daisukes.hush matches 0 if score #noise daisukes.hush matches 800.. as @a at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.8 1

execute if score #noise daisukes.hush matches 1000.. run function daisukes:modifiers/hush/start
