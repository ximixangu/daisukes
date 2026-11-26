# Com a jugador que ha matat mobs des del tick anterior (estadistica mob_kills, tambe els que aixafa): #kill de massa
# per cada un
scoreboard players operation #n daisukes.km = @s daisukes.km_kills
scoreboard players operation #n daisukes.km *= #kill daisukes.km
scoreboard players operation @s daisukes.km_mass += #n daisukes.km
scoreboard players reset @s daisukes.km_kills
