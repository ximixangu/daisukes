# Cada mig segon des del titol sencer (victory/reveal) fins que s'acaben els petards i la canco
scoreboard players add #beat daisukes.victory 1

# Petards i confeti al voltant de cada jugador viu (als morts i als que miren els credits del final, no)
execute if score #beat daisukes.victory < #fireworks_beats daisukes.victory as @e[type=minecraft:player] at @s run function daisukes:victory/sparkle
execute if score #beat daisukes.victory = #fireworks_beats daisukes.victory run function daisukes:victory/finale

# Musica: el disc "chirp" als 10 s, quan el drac ja ha acabat la seva animacio de mort (i el seu rugit).
# Volum 4: se sent be fins a 64 blocs del lloc on comenca, encara que el jugador es mogui
execute if score #beat daisukes.victory matches 18 as @e[type=minecraft:player] at @s run playsound minecraft:music_disc.chirp record @s ~ ~ ~ 4 1
execute if score #beat daisukes.victory matches 19..390 run function daisukes:victory/credits_check

execute if score #beat daisukes.victory < #beat_end daisukes.victory run schedule function daisukes:victory/beat 10t replace
