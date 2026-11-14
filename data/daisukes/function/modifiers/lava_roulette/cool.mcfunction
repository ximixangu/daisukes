# Fi: la lava es refreda (vapor i un xiulet) i descans fins a la tirada seguent
scoreboard players set #phase daisukes.lava 0
scoreboard players operation #t daisukes.lava = #rest daisukes.lava
bossbar set daisukes:lava visible false

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/field {n: 30, fx: "steam"}
execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.4 1.3
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.5
