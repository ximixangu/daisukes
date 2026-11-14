# Comenca la ruleta: 10 salts del punter, cada cop mes lents (del 1r al 2n hi ha 1 tick, del 2n al 3r 2 ticks...)
scoreboard players set #phase daisukes.lava 1
scoreboard players set #gap daisukes.lava 0
scoreboard players set #wait daisukes.lava 0

# Una nota per salt: escala pentatonica de Sol que puja (Sol La Si Re Mi, Sol La Si Re Mi)
data modify storage daisukes:lava notes set value [{p: 0.529732}, {p: 0.594604}, {p: 0.667420}, {p: 0.793701}, {p: 0.890899}, {p: 1.059463}, {p: 1.189207}, {p: 1.334840}, {p: 1.587401}, {p: 1.781797}]

bossbar set daisukes:lava name {"text": "Floor is Lava", "color": "#FFB347", "bold": true}
bossbar set daisukes:lava color yellow
bossbar set daisukes:lava style notched_10
bossbar set daisukes:lava max 10
bossbar set daisukes:lava value 0
bossbar set daisukes:lava players @a
bossbar set daisukes:lava visible true
