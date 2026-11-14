# Soroll: globals i l'anell de cada jugador. Quiet: el que et mous durant el silenci
scoreboard objectives add daisukes.hush dummy
scoreboard objectives add daisukes.hush_still dummy
scoreboard objectives add daisukes.hush_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add daisukes.hush_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add daisukes.hush_jump minecraft.custom:minecraft.jump
scoreboard objectives add daisukes.hush_hit minecraft.custom:minecraft.damage_dealt
scoreboard players set #2 daisukes.hush 2
scoreboard players set #10 daisukes.hush 10

# Fase 0 escolta, 1 avis, 2 silenci. #deaf: ticks en que la barra no puja
scoreboard players set #phase daisukes.hush 0
scoreboard players set #noise daisukes.hush 0
scoreboard players set #deaf daisukes.hush 100

bossbar add daisukes:hush {"text": "The Deep is listening", "color": "#3FE0D0"}
bossbar set daisukes:hush max 1000
bossbar set daisukes:hush style notched_10
bossbar set daisukes:hush color green
bossbar set daisukes:hush players @a

effect give @a minecraft:darkness 3 0 true
execute as @a at @s run playsound minecraft:entity.warden.listening master @s ~ ~ ~ 1 0.8
