# Com a jugador que crema (fora de l'aigua), als seus peus. Flames pel cos i una mica de fum
scoreboard players add @s daisukes.heat_b 1
particle minecraft:flame ~ ~0.9 ~ 0.25 0.45 0.25 0.01 1

scoreboard players operation #t daisukes.heat = @s daisukes.heat_b
scoreboard players operation #t daisukes.heat %= #20 daisukes.heat
execute if score #t daisukes.heat matches 5 run particle minecraft:smoke ~ ~1.6 ~ 0.2 0.2 0.2 0.01 2
execute if score #t daisukes.heat matches 15 run particle minecraft:smoke ~ ~1.6 ~ 0.2 0.2 0.2 0.01 2

# 1 cor cada segon (el primer, 1 s despres d'encendre's). on_fire travessa l'armadura; la Resistencia al foc
# el salva, com a Lava Roulette. Si mor: "burned to death"
execute if score #t daisukes.heat matches 0 run damage @s 2 minecraft:on_fire

# "Overheated" fa pampallugues a la barra, vermell i taronja
execute if score #t daisukes.heat matches 0 run function daisukes:modifiers/overheat/bar/flame with storage daisukes:heat tmp
execute if score #t daisukes.heat matches 10 run function daisukes:modifiers/overheat/bar/flame_dim with storage daisukes:heat tmp
