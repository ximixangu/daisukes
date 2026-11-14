# Macro {yaw, dist, life, explosion} (victory/rocket), com a un jugador. Nomes surt el petard si:
#  - el terra en aquella direccio te cel obert i queda a prop de l'alcada del jugador (sota terra o a cobert
#    no es veuria, o petaria contra el sostre)
#  - no hi ha cap jugador a menys de 9 blocs d'on esclatara (un petard que esclata a menys de 5 blocs fa mal)
# Surt 6 blocs per sobre del terra i esclata 4-11 blocs mes amunt (LifeTime 12-22)
$execute rotated $(yaw) 0 positioned ^ ^ ^$(dist) positioned over motion_blocking if entity @s[distance=..12] positioned ~ ~13 ~ unless entity @a[distance=..9] positioned ~ ~-7 ~ run summon minecraft:firework_rocket ~ ~ ~ {LifeTime: $(life), FireworksItem: {id: "minecraft:firework_rocket", count: 1, components: {"minecraft:fireworks": {explosions: [$(explosion)]}}}}
