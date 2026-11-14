# Com a jugador sobre la lava: 1 cor. El joc no deixa fer mal mes sovint que cada mig segon, aixi que si s'hi
# queda, 2 cors per segon. on_fire travessa l'armadura (la Resistencia al foc el salva) i, si mor: "burned to death"
execute at @s store success score #hurt daisukes.lava run damage @s 2 minecraft:on_fire
execute if score #hurt daisukes.lava matches 1 at @s run particle minecraft:flame ~ ~0.1 ~ 0.25 0.05 0.25 0.03 10
execute if score #hurt daisukes.lava matches 1 at @s run particle minecraft:lava ~ ~0.1 ~ 0.2 0 0.2 0 2
