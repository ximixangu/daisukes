# Com a jugador que acaba de canviar de mida (daisukes.km_s): la mida del pas seguent i la massa que hi cal, la vida
# maxima dels mobs que pot aixafar, els sons i els atributs

# Pas seguent: +#step % (com a minim +1), fins a #max
scoreboard players operation #t daisukes.km = @s daisukes.km_s
scoreboard players operation #t daisukes.km *= #step daisukes.km
scoreboard players operation #t daisukes.km /= #100 daisukes.km
scoreboard players operation #t daisukes.km > #1 daisukes.km
scoreboard players operation #t daisukes.km += @s daisukes.km_s
scoreboard players operation #t daisukes.km < #max daisukes.km
scoreboard players operation @s daisukes.km_next = #t daisukes.km

# Massa que hi cal: #body x (volum - 1), amb el volum = mida^3 (tot en centesimes)
scoreboard players operation #v daisukes.km = #t daisukes.km
scoreboard players operation #v daisukes.km *= #t daisukes.km
scoreboard players operation #v daisukes.km /= #100 daisukes.km
scoreboard players operation #v daisukes.km *= #t daisukes.km
scoreboard players operation #v daisukes.km /= #100 daisukes.km
scoreboard players remove #v daisukes.km 100
scoreboard players operation #v daisukes.km *= #body daisukes.km
scoreboard players operation #v daisukes.km /= #100 daisukes.km
scoreboard players operation @s daisukes.km_need = #v daisukes.km

# Vida dels mobs que aixafa: #mobs per cada +1 de mida
scoreboard players operation #g daisukes.km = @s daisukes.km_s
scoreboard players remove #g daisukes.km 100
scoreboard players operation @s daisukes.km_hp = #g daisukes.km
scoreboard players operation @s daisukes.km_hp *= #mobs daisukes.km
scoreboard players operation @s daisukes.km_hp /= #100 daisukes.km

# Sons, en centesimes. Trepitjades: volum 0.35 + 0.15 per cada +1 (maxim 1) i to 1.1 - 0.15 per cada +1. Creixer: to
# 1.8 - 0.45 per cada +1. Els tons, minim 0.5
scoreboard players operation @s daisukes.km_vol = #g daisukes.km
scoreboard players operation @s daisukes.km_vol *= #15 daisukes.km
scoreboard players operation @s daisukes.km_vol /= #100 daisukes.km
scoreboard players add @s daisukes.km_vol 35
scoreboard players operation @s daisukes.km_vol < #100 daisukes.km
scoreboard players operation #p daisukes.km = #g daisukes.km
scoreboard players operation #p daisukes.km *= #15 daisukes.km
scoreboard players operation #p daisukes.km /= #100 daisukes.km
scoreboard players set @s daisukes.km_pit 110
scoreboard players operation @s daisukes.km_pit -= #p daisukes.km
scoreboard players operation @s daisukes.km_pit > #50 daisukes.km
scoreboard players operation #p daisukes.km = #g daisukes.km
scoreboard players operation #p daisukes.km *= #45 daisukes.km
scoreboard players operation #p daisukes.km /= #100 daisukes.km
scoreboard players set @s daisukes.km_pop 180
scoreboard players operation @s daisukes.km_pop -= #p daisukes.km
scoreboard players operation @s daisukes.km_pop > #50 daisukes.km

function daisukes:modifiers/katamari/attr/apply
