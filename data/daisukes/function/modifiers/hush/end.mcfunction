# Fi del silenci: les boques s'enfonsen (listen les esborra al cap de 10 ticks) i 10 s de calma
scoreboard players set #phase daisukes.hush 0
scoreboard players set #noise daisukes.hush 0
scoreboard players set #deaf daisukes.hush 10
execute as @e[type=block_display,tag=daisukes.hush_mouth] at @s run tp @s ~ ~-1 ~
tag @a remove daisukes.hush_caught
bossbar set daisukes:hush name {"text": "The Deep is listening", "color": "#3FE0D0"}
bossbar set daisukes:hush max 1000
bossbar set daisukes:hush value 0
bossbar set daisukes:hush color green
execute as @a at @s run playsound minecraft:block.sculk_sensor.clicking_stop master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1
