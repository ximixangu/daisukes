# Com a un bloc negre que s'acaba de trencar: fora el que ha deixat anar (acaba de sortir: Age 0) i torna a ser un forat,
# amb el mateix bloc (el recorda la capa negra)
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Age: 0s}]
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=minecraft:experience_orb,dx=0,dy=0,dz=0,nbt={Age: 0s}]
tag @s remove daisukes.earth_set
tag @s add daisukes.earth_wait
data merge entity @s {transformation: {scale: [0f, 0f, 0f]}}
scoreboard players set @s daisukes.earth_t 80
scoreboard players add #holes daisukes.earth 1
