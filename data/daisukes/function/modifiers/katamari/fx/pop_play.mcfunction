# Macro: {pitch, r, mid}. r: mitja amplada del cos; mid: mig cos (0.9 x mida)
$playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 0.5 $(pitch)
$particle minecraft:poof ~ ~$(mid) ~ $(r) $(r) $(r) 0.02 8
