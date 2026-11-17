# Heavy Blocks: els blocs que posa un jugador cauen com la sorra si no tenen res a sota
#  daisukes.heavy: el numero de cada jugador mentre esta actiu (sense, els avancaments place, where i used no salten) i valors temporals
scoreboard objectives add daisukes.heavy dummy
advancement revoke @a only daisukes:modifiers/heavy_blocks/place
advancement revoke @a only daisukes:modifiers/heavy_blocks/where
advancement revoke @a only daisukes:modifiers/heavy_blocks/used
