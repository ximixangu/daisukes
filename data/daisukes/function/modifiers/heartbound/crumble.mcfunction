# Com a un creaking: s'esmicola i desapareix (sota el mon, perque no deixi res)
particle minecraft:block_crumble{block_state: "minecraft:pale_oak_log"} ~ ~1.3 ~ 0.35 0.9 0.35 0 50 normal @a[distance=..48]
particle minecraft:block{block_state: "minecraft:pale_oak_log"} ~ ~1.3 ~ 0.35 0.9 0.35 0 20 normal @a[distance=..48]
playsound minecraft:entity.creaking.death hostile @a ~ ~ ~ 1 1
function daisukes:modifiers/heartbound/vanish
