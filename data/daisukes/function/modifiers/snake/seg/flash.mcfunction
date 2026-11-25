# Com a tros que acaba de mossegar algu (vermell): al cap de 6 ticks torna a ser del color de la cua
scoreboard players remove @s daisukes.sn_t 1
execute if score @s daisukes.sn_t matches ..0 run function daisukes:modifiers/snake/seg/unflash with storage daisukes:snake config
