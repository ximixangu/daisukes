# Com a ombra: es desfa en tinta i desapareix (s'elimina sota el mon: no es veu morir i no deixa res)
particle minecraft:squid_ink ~ ~1 ~ 0.3 0.6 0.3 0.05 30
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 0.7
tp @s ~ -1000 ~
kill @s
