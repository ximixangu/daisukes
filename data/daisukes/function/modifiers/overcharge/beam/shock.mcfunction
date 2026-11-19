# Macro: {beam_damage}. Com al jugador, al punt del raig. Tipus lightning_bolt: al xat "was struck by lightning",
# l'armadura el redueix i l'escut no l'atura
$execute store success score #hit daisukes.oc run damage @s $(beam_damage) minecraft:magic
execute if score #hit daisukes.oc matches 1 run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.15 20 force
execute if score #hit daisukes.oc matches 1 at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
execute if score #hit daisukes.oc matches 1 run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.7 1.9
execute if score #hit daisukes.oc matches 0 run particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.05 4 force
