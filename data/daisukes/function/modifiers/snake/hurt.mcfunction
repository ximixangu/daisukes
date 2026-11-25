# Macro: {block, damage}. Com al jugador mossegat, al centre del tros: una picada minima des del tros, que l'empeny enrere
# (com els raigs d'Overcharge), i el mal (magic: l'armadura no el redueix; magic sol no empeny)
damage @s 0.01 minecraft:sting at ~ ~ ~
$damage @s $(damage) minecraft:magic
scoreboard players operation @s daisukes.sn_cd = #cooldown daisukes.sn
$particle minecraft:block{block_state: "$(block)"} ~ ~ ~ 0.3 0.3 0.3 0 16
particle minecraft:item_slime ~ ~ ~ 0.3 0.3 0.3 0 8
playsound minecraft:entity.cat.hiss hostile @a ~ ~ ~ 0.9 1.3
playsound minecraft:block.note_block.bit hostile @s ~ ~ ~ 1 0.5
