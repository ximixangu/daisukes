# Heavy Blocks: els blocs que posa un jugador cauen com la sorra si no tenen res a sota
#  daisukes.heavy: el numero de cada jugador mentre esta actiu (sense, els avancaments daisukes:modifiers/heavy_blocks/place i daisukes:modifiers/heavy_blocks/where no salten) i valors temporals (#...)
scoreboard objectives add daisukes.heavy dummy
scoreboard players set #10000 daisukes.heavy 10000
advancement revoke @a only daisukes:modifiers/heavy_blocks/place
advancement revoke @a only daisukes:modifiers/heavy_blocks/where
