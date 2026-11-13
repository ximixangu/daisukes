# Com al mob que s'esta morint, als seus peus. El creeper ja porta la marca: d'ell no en sortira cap altre
particle minecraft:soul ~ ~0.5 ~ 0.2 0.3 0.2 0.05 20
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 1 1.5
summon minecraft:creeper ~ ~ ~ {attributes: [{id: "minecraft:scale", base: 0.5}, {id: "minecraft:follow_range", base: 256}], Motion: [0.0d, 0.5d, 0.0d], Fuse: 15, HasVisualFire: 1b, Tags: ["daisukes.creeper_host"]}
