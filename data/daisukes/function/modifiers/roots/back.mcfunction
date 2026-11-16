# Com al jugador que torna (de morir, de creatiu o espectador, de desconnectar-se): lliure, i el que hagi caminat
# mentrestant (per exemple, en creatiu) no compta
function daisukes:modifiers/roots/unbind
scoreboard players set @s daisukes.roots_q 0
scoreboard players set @s daisukes.roots_mw 0
scoreboard players set @s daisukes.roots_ms 0
scoreboard players set @s daisukes.roots_mo 0
scoreboard players set @s daisukes.roots_mu 0
