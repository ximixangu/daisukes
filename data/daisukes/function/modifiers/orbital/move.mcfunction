# L'ender no gira: salta cada segon a un altre lloc
execute if entity @s[tag=daisukes.orb_ender] run function daisukes:modifiers/orbital/ender/blink
# La resta gira al voltant del cap: el coure lent, els trossos de slime rapid i al reves
execute if entity @s[tag=daisukes.orb_fast,tag=!daisukes.orb_left] rotated as @s run rotate @s ~9 0
execute if entity @s[tag=daisukes.orb_fast,tag=daisukes.orb_left] rotated as @s run rotate @s ~-9 0
execute if entity @s[tag=daisukes.orb_slow,tag=!daisukes.orb_left] rotated as @s run rotate @s ~2.5 0
execute if entity @s[tag=daisukes.orb_slow,tag=daisukes.orb_left] rotated as @s run rotate @s ~-2.5 0
execute if entity @s[tag=!daisukes.orb_fast,tag=!daisukes.orb_slow,tag=!daisukes.orb_ender,tag=!daisukes.orb_left] rotated as @s run rotate @s ~4 0
execute if entity @s[tag=!daisukes.orb_fast,tag=!daisukes.orb_slow,tag=!daisukes.orb_ender,tag=daisukes.orb_left] rotated as @s run rotate @s ~-4 0
# A 1,8 blocs dels ulls; si hi ha paret, mes a prop (s'ha de poder picar)
execute rotated as @s positioned ^ ^ ^1.8 if block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/orbital/place
execute rotated as @s positioned ^ ^ ^1.1 if block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/orbital/place
execute rotated as @s positioned ^ ^ ^0.5 run function daisukes:modifiers/orbital/place
