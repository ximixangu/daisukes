scoreboard players set #sec daisukes.earth 0
# Cursors de jugadors que ja no hi son (desconnectats, morts, en creatiu o espectador)
execute as @e[type=minecraft:marker,tag=daisukes.earth_cursor] run function daisukes:modifiers/living_earth/cursor_owner
execute store result score #holes daisukes.earth if entity @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_wait]
