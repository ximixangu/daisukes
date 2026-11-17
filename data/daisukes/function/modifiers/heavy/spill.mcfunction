setblock ~ ~ ~ air destroy

# El que ha caigut dins d'aquest bloc es marca (Age 1) perque no s'esborri amb la resta
execute as @e[type=minecraft:item,dx=0,dy=0,dz=0,nbt={Age: 0s}] run data modify entity @s Age set value 1s
