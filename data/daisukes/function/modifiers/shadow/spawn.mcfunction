# Com a jugador: neix la seva ombra (silueta negra que no es pot moure ni matar i no deixa res)
summon minecraft:mannequin ~ ~ ~ {Tags: ["daisukes.shadow", "daisukes.shadow_claimed", "daisukes.shadow_new"], profile: {texture: "minecraft:block/black_concrete"}, hide_description: true, immovable: true, Invulnerable: true, NoGravity: true}
scoreboard players operation @e[type=mannequin,tag=daisukes.shadow_new] daisukes.shadow = #me daisukes.shadow
tag @e[type=mannequin,tag=daisukes.shadow_new] remove daisukes.shadow_new

particle minecraft:squid_ink ~ ~1 ~ 0.3 0.6 0.3 0.05 30
playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 1 1.2
