# Macro: {half, spread}. Com a caixa que s'acaba d'intercanviar, al seu origen: particules i so des del centre
$particle minecraft:reverse_portal ~$(half) ~$(half) ~$(half) $(spread) $(spread) $(spread) 0.05 120 normal
$playsound minecraft:entity.illusioner.mirror_move block @a ~$(half) ~$(half) ~$(half) 2 0.8
$playsound minecraft:entity.enderman.teleport block @a ~$(half) ~$(half) ~$(half) 2 0.6
