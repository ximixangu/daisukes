# Configuracio per defecte (la de Daisuke). La posa core/load el primer cop i el boto Default del menu.
# Son les opcions del menu (menu/settings); settings/apply en treu els valors per al motor.
# No toca els modificadors desactivats (menu/modifiers)
scoreboard players set #configured daisukes.config 1

# Com puja el nombre de modificadors: 1 per fites (Daisuke's), 2 per temps, 3 fix
scoreboard players set #mode daisukes.config 1

# Modificadors a l'inici (1-5). Amb fites, totes les fases en tenen els mateixos de mes
scoreboard players set #start_count daisukes.config 1

# Per temps: un mes cada... (1 = 10 min, 2 = 15, 3 = 20, 4 = 30, 5 = 45, 6 = 60 min)
scoreboard players set #every_choice daisukes.config 4

# Maxim de modificadors alhora (0 = sense limit, 2-6)
scoreboard players set #max_count daisukes.config 0

# Cada quant canvien (1 = 30 s, 2 = 45 s, 3 = 1 min, 4 = 1 min 30 s, 5 = 2 min, 6 = 3 min, 7 = 4 min, 8 = 5 min)
scoreboard players set #change_choice daisukes.config 5

# A l'End canvien el doble de rapid (1 si, 0 no)
scoreboard players set #end_fast daisukes.config 1

# Morir acaba el repte (1 si, 0 no)
scoreboard players set #death_ends daisukes.config 1
