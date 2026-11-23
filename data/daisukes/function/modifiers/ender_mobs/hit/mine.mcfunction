# Com a mob a prop del jugador del cop: torna 1 si l'acaba de tocar ell. El seu darrer atacant es el jugador (etiqueta
# em_me; nomes es mira l'NBT d'aquests) i HurtTime es 10: els que ell havia tocat abans ja l'han baixat
execute unless function daisukes:modifiers/ender_mobs/hit/attacker run return fail
execute if entity @s[nbt={HurtTime: 10s}] run return 1
return fail
