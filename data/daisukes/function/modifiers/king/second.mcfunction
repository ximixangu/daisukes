# Cada segon (tick). Reis: continuen brillant, i els que s'han quedat sense corona deixen de ser-ho
execute as @e[tag=daisukes.king] run function daisukes:modifiers/king/ruler/check

# Hereus i jugadors amb la marca, pero sense cap corona que hi vagi o que portin (s'ha esvait...): fora la marca
execute as @e[tag=daisukes.king_heir] run function daisukes:modifiers/king/ruler/heir_check
execute as @a[tag=daisukes.king_wearer] run function daisukes:modifiers/king/player/wearer_check

# Corones: s'esvaeixen si no hi ha ningu a prop, busquen Rei nou quan s'acaba l'interregne i es balancegen
scoreboard players add #bob daisukes.king 1
execute if score #bob daisukes.king matches 2.. run scoreboard players set #bob daisukes.king 0
execute as @e[type=minecraft:text_display,tag=daisukes.king_crown] at @s run function daisukes:modifiers/king/crown/second
function daisukes:modifiers/king/bar/sweep

# Qui no te cap corona a menys de 48 blocs: si hi ha monstres a prop, se'n corona un
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/king/court/found
