# Com a jugador que porta alguna Hot Potato, als seus peus
particle minecraft:flame ~ ~1.2 ~ 1 1 1 0.05 20 normal
execute if score #scream daisukes.potato matches 0 run playsound minecraft:entity.ghast.hurt player @s ~ ~ ~ 0.8 0.7
