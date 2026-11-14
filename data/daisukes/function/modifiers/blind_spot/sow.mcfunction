# Com a jugador, als seus peus: xiulet per sobre del cap i #k0 llavors (amb el doble d'intents, per si no hi caben)
playsound minecraft:entity.firework_rocket.launch block @a ~ ~8 ~ 0.7 0.5
scoreboard players operation #k daisukes.bspot = #k0 daisukes.bspot
scoreboard players operation #try daisukes.bspot = #k0 daisukes.bspot
scoreboard players operation #try daisukes.bspot += #k0 daisukes.bspot
function daisukes:modifiers/blind_spot/sow_loop
