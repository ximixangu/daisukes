# Com al jugador, cada tick: com es mou ara mateix. Els cm que ha caminat o corregut aquest tick (tambe dins l'aigua;
# ajupit no compta), mes la meitat del que portava. Caminant en surt uns 43, corrent uns 56; quiet o ajupit, 0 en pocs ticks
scoreboard players operation @s daisukes.roots_q /= #2 daisukes.roots
scoreboard players operation @s daisukes.roots_q += @s daisukes.roots_mw
scoreboard players operation @s daisukes.roots_q += @s daisukes.roots_ms
scoreboard players operation @s daisukes.roots_q += @s daisukes.roots_mo
scoreboard players operation @s daisukes.roots_q += @s daisukes.roots_mu
scoreboard players set @s daisukes.roots_mw 0
scoreboard players set @s daisukes.roots_ms 0
scoreboard players set @s daisukes.roots_mo 0
scoreboard players set @s daisukes.roots_mu 0
