# Cada mig segon: anell de sculk si has fet molt soroll, espurnes si n'has fet poc
execute if score @s daisukes.hush matches 40.. run particle minecraft:shriek{delay: 0} ~ ~0.1 ~
execute if score @s daisukes.hush matches 40.. run playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 0.1 1.2
execute if score @s daisukes.hush matches 10..39 run particle minecraft:sculk_charge_pop ~ ~0.1 ~ 0.3 0 0.3 0 4
scoreboard players set @s daisukes.hush 0
