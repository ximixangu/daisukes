# Com al cor del jugador: massa lluny (o en una altra dimensio) o repetit, fora
execute unless entity @a[tag=daisukes.heart_me,distance=..48] run return run function daisukes:modifiers/heartbound/unheart
scoreboard players add #has daisukes.heart 1
execute if score #has daisukes.heart matches 2.. run function daisukes:modifiers/heartbound/unheart
