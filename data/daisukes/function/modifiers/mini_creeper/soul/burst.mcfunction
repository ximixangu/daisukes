# Esclata (com a l'anima, als seus peus). Mal: 6 (3 cors, igual a totes les dificultats) a cada jugador a menys
# de 2,5 blocs. Surt del punt de l'esclat: empeny, l'escut l'atura si hi mires, i l'armadura i Blast Protection
# el redueixen. Tipus de dany vanilla minecraft:fireworks (al xat: "went off with a bang"); un de propi no es
# carregaria amb /reload, nomes en obrir el mon
particle minecraft:flash{color: [0.31, 0.84, 0.95, 1.0]} ~ ~0.35 ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~0.35 ~ 0 0 0 0 1 force
particle minecraft:soul ~ ~0.35 ~ 0.3 0.3 0.3 0.06 12 force
execute positioned ~ ~0.35 ~ run function daisukes:modifiers/mini_creeper/soul/ring {s: 0.4}
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.8 1.6
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1.5 0.6
execute positioned ~ ~0.35 ~ as @e[type=minecraft:player,gamemode=!spectator,distance=..2.5] run damage @s 8 minecraft:fireworks at ~ ~ ~
kill @s
