# Macro {s}: segons de l'interregne. Com a monstre de la cort d'un Rei que acaba de caure: la proteccio es
# trenca (vidre i or), queda atordit 2 s i brilla tot l'interregne (es veu on es per anar-lo a buscar)
scoreboard players reset @s daisukes.king_sub
effect clear @s minecraft:resistance
effect give @s minecraft:slowness 2 1 true
particle minecraft:block{block_state: "minecraft:gold_block"} ~ ~1 ~ 0.3 0.5 0.3 0 12
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.5 1.4
