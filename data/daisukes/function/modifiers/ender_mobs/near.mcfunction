# Macro: {radius}. Mobs a menys de radius blocs d'un jugador que encara no es vigilen: tots, o nomes els hostils si
# nomes cal mirar-ne els salts a l'atzar (#watch_all 0)
$execute if score #watch_all daisukes.em matches 1 at @a[gamemode=!spectator] as @e[distance=..$(radius),type=!minecraft:player,type=!#daisukes:non_mob,type=!#daisukes:ender_mobs/never,tag=!daisukes.em_mob] run function daisukes:modifiers/ender_mobs/track
$execute if score #watch_all daisukes.em matches 0 at @a[gamemode=!spectator] as @e[distance=..$(radius),type=#daisukes:ender_mobs/hostile,tag=!daisukes.em_mob] run function daisukes:modifiers/ender_mobs/track
