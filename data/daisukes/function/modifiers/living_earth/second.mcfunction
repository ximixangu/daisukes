scoreboard players set #sec daisukes.earth 0
# Cursors de jugadors que ja no hi son (desconnectats, morts, en creatiu o espectador)
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor] run function daisukes:modifiers/living_earth/cursor_owner
execute store result score #holes daisukes.earth if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait]
# Els negres no canvien: si n'ha crescut o canviat algun, torna a ser el que era
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost] at @s unless block ~ ~ ~ #daisukes:living_earth/clear run function daisukes:modifiers/living_earth/fix
# Ombres negres on ara hi ha un bloc (hi ha caigut sorra, hi ha crescut alguna cosa...): fora
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=daisukes.earth_ghost] at @s unless block ~ ~ ~ #daisukes:living_earth/clear run function daisukes:modifiers/living_earth/remove
