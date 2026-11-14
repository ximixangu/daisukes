# La barra s'ha omplert: crit, foscor i 1,5 s d'avis abans del silenci
scoreboard players set #phase daisukes.hush 1
scoreboard players set #time daisukes.hush 30
bossbar set daisukes:hush name {"text": "HUSH", "color": "#3FE0D0", "bold": true}
bossbar set daisukes:hush color red
# Temps del titol per defecte del pack (algun modificador els canvia)
title @a times 5t 3s 2s
title @a subtitle {"text": "shhh... don't move", "color": "gray", "italic": true}
title @a title ""
effect give @a minecraft:darkness 6 0 true
execute as @a at @s run playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 1 1
execute at @e[type=player,gamemode=!spectator] run particle minecraft:shriek{delay: 0} ~ ~0.1 ~
execute at @e[type=player,gamemode=!spectator] run particle minecraft:shriek{delay: 8} ~ ~0.1 ~
