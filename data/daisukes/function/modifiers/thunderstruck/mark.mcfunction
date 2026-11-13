# Com el jugador i a la seva posició: aquí caurà el llamp si no es mou.
scoreboard players set @s daisukes.thunder 0

summon marker ~ ~ ~ {Tags:["daisukes.thunder_target"]}
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1.5 1.3
