# Tapada amb un bloc (o sense terra a sota): s'apaga amb un xiuxiueig i una nota alegre
particle minecraft:smoke ~ ~1.1 ~ 0.15 0.1 0.15 0.02 10 force @a[distance=..32]
particle minecraft:wax_off ~ ~1.2 ~ 0.25 0.15 0.25 0 6 force @a[distance=..32]
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.5 1.4
playsound minecraft:block.note_block.chime block @a ~ ~ ~ 0.7 1.781797
kill @s
