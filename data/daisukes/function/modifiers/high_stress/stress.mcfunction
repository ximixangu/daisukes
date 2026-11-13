# Durant 6 s la vida maxima baixa a mig cor (x0.005): el seguent cop que rebi mal, mort.
# Es un modificador d'atribut (no "base set"): si mor, reapareix amb la vida normal
attribute @s minecraft:max_health modifier add daisukes:high_stress -0.995 add_multiplied_total
scoreboard players set @s daisukes.high_stress 120
