# Durant 6 s la vida maxima baixa a mig cor (x0.005): el seguent cop que rebi mal, mort.
# Es un modificador d'atribut (no "base set"): si mor, reapareix amb la vida normal
attribute @s minecraft:max_health modifier add daisukes:high_stress -0.995 add_multiplied_total
scoreboard players set @s daisukes.high_stress 120

# Avis del primer cop: batec de cor accelerat (el senten els de prop), la vida que "s'apaga" i cors que li surten volant
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 1.3
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.6 1.6
particle minecraft:heart ~ ~1.3 ~ 0.4 0.4 0.4 0 10
