# On es la patata: explosio que no trenca blocs, amb trossos de patata pels aires
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle minecraft:item{item: "minecraft:baked_potato"} ~ ~ ~ 0.3 0.3 0.3 0.25 25 force
particle minecraft:lava ~ ~ ~ 0.4 0.4 0.4 0 10
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.1

# El portador mor (el totem el salva). Qui sigui a menys de 3.5 blocs rep 3 cors.
execute as @e[tag=daisukes.potato_holder,sort=nearest,limit=1] run damage @s 1000 minecraft:explosion at ~ ~ ~
execute as @e[type=player,tag=!daisukes.potato_holder,gamemode=!spectator,distance=..3.5] run damage @s 6 minecraft:explosion at ~ ~ ~
