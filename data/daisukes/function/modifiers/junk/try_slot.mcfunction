# Com a jugador. Prova la ranura junk.slot i torna 1 si hi ha posat brossa. Si era plena, en prova una altra:
# a l'atzar els primers 6 cops, i despres la seguent (dona la volta) fins a haver-les mirat totes (42 proves com a molt)
execute store result score #junk_ok daisukes.math run function daisukes:modifiers/junk/fill with storage daisukes:temp junk
execute if score #junk_ok daisukes.math matches 1 run return 1

scoreboard players add #junk_try daisukes.math 1
execute if score #junk_try daisukes.math matches 42.. run return 0
execute if score #junk_try daisukes.math matches ..5 store result storage daisukes:temp junk.slot int 1 run random value 0..35
execute if score #junk_try daisukes.math matches 6.. run function daisukes:modifiers/junk/next_slot
return run function daisukes:modifiers/junk/try_slot
