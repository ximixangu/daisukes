# Entitat invisible per moure objectes entre l'inventari i les dades (es crea i es mata al mateix tick)
kill @e[type=item_display,tag=daisukes.shift_buf]
summon item_display ~ ~ ~ {Tags:["daisukes.shift_buf"]}
