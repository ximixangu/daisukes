# Titol sencer (victory/title): VICTORY! amb subtitol, la fanfara de repte completat i la primera traca
title @a times 0t 5s 2s
title @a subtitle {"text": "Daisuke's Challenge completed", "color": "yellow"}
title @a title {"text": "VICTORY!", "color": "white", "bold": true}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @e[type=minecraft:player] at @s run function daisukes:victory/burst

# Comencen els petards: un cop cada mig segon (victory/beat)
schedule function daisukes:victory/beat 10t replace
