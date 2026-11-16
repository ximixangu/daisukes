# Primer cop que el veiem: un numero (i el que hagi caminat abans, per exemple en creatiu, no compta)
scoreboard players add #ids daisukes.roots 1
scoreboard players operation @s daisukes.roots = #ids daisukes.roots
scoreboard players set @s daisukes.roots_p 0
scoreboard players set @s daisukes.roots_q 0
scoreboard players operation @s daisukes.roots_z = #time daisukes.roots
scoreboard players set @s daisukes.roots_mw 0
scoreboard players set @s daisukes.roots_ms 0
scoreboard players set @s daisukes.roots_mo 0
scoreboard players set @s daisukes.roots_mu 0
