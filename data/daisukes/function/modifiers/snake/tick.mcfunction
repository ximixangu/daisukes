# Rellotge d'1 s: cada segon es repassen les cues de qui ja no hi es (sweep)
scoreboard players add #clock daisukes.sn 1
execute if score #clock daisukes.sn matches 20.. run scoreboard players set #clock daisukes.sn 0

# Animacions: els trossos posats el tick anterior creixen fins a ser un bloc sencer, els que marxen s'encongeixen i
# desapareixen, i els que acaben de mossegar algu tornen a ser verds
execute as @e[type=minecraft:block_display,tag=daisukes.sn_new] run function daisukes:modifiers/snake/seg/grow
execute as @e[type=minecraft:block_display,tag=daisukes.sn_dying] run function daisukes:modifiers/snake/seg/fade
execute as @e[type=minecraft:block_display,tag=daisukes.sn_flash] run function daisukes:modifiers/snake/seg/flash

# Jugadors sense id (els que acaben d'entrar): cada tros sap de qui es
execute as @a unless score @s daisukes.sn_id matches 1.. run function daisukes:modifiers/snake/new_id

# Pastis: cada tros que se'n menja tambe fa creixer la cua (la resta del menjar, l'avancament snake/eat)
execute as @a[scores={daisukes.sn_cake=1..}] run function daisukes:modifiers/snake/cake

# Morts i espectadors: la seva cua desapareix i, quan tornin a jugar, comencaran de nou on siguin
execute as @a[scores={daisukes.sn_dead=1..}] run function daisukes:modifiers/snake/forget
execute as @a[gamemode=spectator,tag=daisukes.sn_on] run function daisukes:modifiers/snake/forget

# Cada jugador viu i no espectador: on es (i la cua, si ha canviat de columna) i si toca alguna cua
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/snake/player

# Trossos nous: comencen a fer mal quan el seu amo ja no els toca
execute as @e[type=minecraft:block_display,tag=daisukes.sn_fresh] at @s run function daisukes:modifiers/snake/seg/arm

# Cada segon: fora les cues de qui ja no hi es (desconnectat) i les d'una activacio anterior
execute if score #clock daisukes.sn matches 0 run function daisukes:modifiers/snake/sweep
