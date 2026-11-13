# Com a jugador viu que havia mort. Si no te cap jeb_ a prop, se li'n donara una de nova (jeb/adopt)
scoreboard players set @s daisukes.jeb_deaths 0
execute at @s unless entity @e[type=minecraft:sheep,tag=daisukes.jeb_sheep,distance=..8] run scoreboard players reset @s daisukes.jeb
