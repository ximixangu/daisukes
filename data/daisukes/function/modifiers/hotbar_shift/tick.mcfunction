# Entrada: ruleta i hotbar flotant
execute if score #intro daisukes.shift matches 1 run return run function daisukes:modifiers/hotbar_shift/intro/tick

# Morts: el que estava guardat a part cau on han mort
execute as @a[scores={daisukes.shift_dead=1..}] run function daisukes:modifiers/hotbar_shift/died
# Il·lusió de cada jugador viu (en creatiu i espectador, no)
execute as @e[type=player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/hotbar_shift/player
execute as @e[type=player,gamemode=!survival,gamemode=!adventure] if predicate daisukes:hotbar_shift/marked run function daisukes:modifiers/hotbar_shift/recover

# Objectes llançats o caiguts amb disfressa, i l'inventari de la muntura (burro, barca amb cofre...)
execute at @a as @e[type=item,distance=..8] if items entity @s contents *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/drop
execute as @e[type=player] on vehicle if items entity @s container.* *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_items {src:"entity @s"}
execute as @e[type=player] on vehicle if items entity @s horse.* *[custom_data~{daisukes_shift:{}}] run function daisukes:modifiers/hotbar_shift/fix_items {src:"entity @s"}

bossbar set daisukes:shift players @a
