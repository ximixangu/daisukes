# Com a un bloc negre que s'acaba de trencar: no dona res i torna a fer forat (amb el mateix bloc guardat)
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Age: 0s}]
tag @s remove daisukes.earth_set
tag @s add daisukes.earth_wait
scoreboard players reset @s daisukes.earth
scoreboard players set @s daisukes.earth_t 80
data merge entity @s {transformation: {translation: [0f, 0f, 0f], scale: [0f, 0f, 0f]}}
