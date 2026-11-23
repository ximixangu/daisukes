# Mines enceses (n'hi ha alguna: #lit): compte enrere i esclat. #lit torna a comptar les que queden, i quan no en
# queda cap, no es busquen fins que se n'encengui una altra
scoreboard players set #lit daisukes.tk 0
execute as @e[type=minecraft:block_display,tag=daisukes.tk_lit] at @s run function daisukes:modifiers/tank/mine/fuse
