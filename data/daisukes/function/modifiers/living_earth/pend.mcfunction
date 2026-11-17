# Com al marcador que es va posar als peus del jugador en el moment del clic
data remove storage daisukes:earth main
data remove storage daisukes:earth off
data modify storage daisukes:earth main set from entity @s data.main
data modify storage daisukes:earth off set from entity @s data.off
scoreboard players operation #me daisukes.earth = @s daisukes.earth
tag @s add daisukes.earth_cur
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] if score @s daisukes.earth = #me daisukes.earth run tag @s add daisukes.earth_who
scoreboard players set #tie daisukes.earth 0
scoreboard players set #marked daisukes.earth 0
scoreboard players set #n daisukes.earth 0
scoreboard players set #g daisukes.earth 0
scoreboard players set #bits daisukes.earth 0
execute if data storage daisukes:earth w run scoreboard players set #bits daisukes.earth 1
# 1) On es: els llocs on hi ha un bloc que pot ser el posat (#g) i, d'aquests, els del tipus que tenia a la ma (#n).
# Gairebe sempre n'hi ha un de sol. Si n'hi ha mes, el del tipus de la ma
execute if score #bits daisukes.earth matches 1 run function daisukes:modifiers/living_earth/cands with storage daisukes:earth w
execute if score #g daisukes.earth matches 1 as @e[type=minecraft:marker,tag=daisukes.earth_cand,distance=..12] at @s run function daisukes:modifiers/living_earth/place_mark
execute if score #g daisukes.earth matches 2.. if score #n daisukes.earth matches 1 as @e[type=minecraft:marker,tag=daisukes.earth_cand,tag=daisukes.earth_ctype,distance=..12] at @s run function daisukes:modifiers/living_earth/place_mark
# 2) Si encara n'hi ha mes d'un: el que es veu amb la mirada d'ara o, si no, amb la del clic (nomes entre ells). Si cap, cap
execute if score #g daisukes.earth matches 2.. if score #n daisukes.earth matches 2.. run scoreboard players set #tie daisukes.earth 1
execute if score #g daisukes.earth matches 2.. if score #n daisukes.earth matches 0 run scoreboard players set #tie daisukes.earth 2
execute if score #tie daisukes.earth matches 1.. run function daisukes:modifiers/living_earth/tie
# 3) Si no se sap on es (n'ha posat dos alhora...): el raig amb la mirada del clic
scoreboard players set #mode daisukes.earth 1
scoreboard players set #step daisukes.earth 0
execute if score #bits daisukes.earth matches 0 as @a[tag=daisukes.earth_who,limit=1] at @e[type=minecraft:marker,tag=daisukes.earth_cur,limit=1] rotated as @e[type=minecraft:marker,tag=daisukes.earth_cur,limit=1] anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/living_earth/ray
scoreboard players set #mode daisukes.earth 0
scoreboard players set #tie daisukes.earth 0
kill @e[type=minecraft:marker,tag=daisukes.earth_cand]
tag @a[tag=daisukes.earth_who] remove daisukes.earth_who
kill @s
