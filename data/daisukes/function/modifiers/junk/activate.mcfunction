# Per jugador, dos acumuladors (mateix sistema que cursed_potato o item_drop): brossa a l'inventari i brossa a terra
scoreboard objectives add daisukes.junk dummy
scoreboard objectives add daisukes.junk_drop dummy

# Constants de la diagonal (ahead) i rellotge de la brossa llencada (tick)
scoreboard players set #7 daisukes.junk 7
scoreboard players set #10 daisukes.junk 10
scoreboard players set #mark daisukes.junk 0
