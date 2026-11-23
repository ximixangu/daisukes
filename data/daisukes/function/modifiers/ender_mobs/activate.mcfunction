# Ender Mobs. Cop d'un jugador: l'avancament ender_mobs/player_hit marca el mob a l'instant (on_player_hit) i salta
# el tick seguent. Qualsevol altre mal (altres mobs, foc, caigudes...) i els salts a l'atzar: cada mob a prop d'un
# jugador es mira un tick de cada 8 (check). Cap entitat nova: nomes etiquetes i valors als mateixos mobs
scoreboard objectives add daisukes.em dummy
scoreboard objectives add daisukes.em_ht dummy
scoreboard objectives add daisukes.em_last dummy

# =====================================================================
#  CONFIGURACIO (es llegeix en activar-se: despres de canviar-la, /reload i torna'l a activar)
# =====================================================================
# Distancia del salt, en blocs i en qualsevol direccio: de #near a #far (1-16)
scoreboard players set #near daisukes.em 3
scoreboard players set #far daisukes.em 12
# Salts a l'atzar: cada quants segons salta cada mob, de mitjana (0 = cap)
scoreboard players set #random_time daisukes.em 15
# Qui fa salts a l'atzar: 0 nomes els mobs hostils (no buida corrals ni sales d'aldeans); 1 tots
scoreboard players set #random_all daisukes.em 1
# El mal que no ve d'un jugador (altres mobs, foc, caigudes...) tambe els fa saltar: 1 si; 0 no (mes barat)
scoreboard players set #any_damage daisukes.em 1
# Ticks com a minim entre dos salts del mateix mob, fora dels cops de jugador (40 = 2 s: un que es crema no salta
# a cada cremada)
scoreboard players set #cooldown daisukes.em 20
# Radi al voltant dels jugadors on es vigilen els mobs (mal de qualsevol tipus i salts a l'atzar; 8-128)
scoreboard players set #radius daisukes.em 48
# =====================================================================

execute if score #near daisukes.em matches ..0 run scoreboard players set #near daisukes.em 1
execute if score #near daisukes.em matches 17.. run scoreboard players set #near daisukes.em 16
execute if score #far daisukes.em matches 17.. run scoreboard players set #far daisukes.em 16
execute if score #far daisukes.em < #near daisukes.em run scoreboard players operation #far daisukes.em = #near daisukes.em
execute if score #random_time daisukes.em matches ..-1 run scoreboard players set #random_time daisukes.em 0
execute if score #cooldown daisukes.em matches ..-1 run scoreboard players set #cooldown daisukes.em 0
execute if score #radius daisukes.em matches ..7 run scoreboard players set #radius daisukes.em 8
execute if score #radius daisukes.em matches 129.. run scoreboard players set #radius daisukes.em 128

# Distancies possibles del salt (#span) i probabilitat d'un salt a l'atzar a cada mirada, en deumil.lesimes
# (#chance): cada mob es mira 2,5 cops per segon, aixi que 4000 / #random_time
scoreboard players operation #span daisukes.em = #far daisukes.em
scoreboard players operation #span daisukes.em -= #near daisukes.em
scoreboard players add #span daisukes.em 1
scoreboard players set #chance daisukes.em 0
execute if score #random_time daisukes.em matches 1.. run scoreboard players set #chance daisukes.em 4000
execute if score #random_time daisukes.em matches 1.. run scoreboard players operation #chance daisukes.em /= #random_time daisukes.em

# Cal vigilar mobs (#watch) si hi ha mal de qualsevol tipus o salts a l'atzar; tots (#watch_all) o nomes els hostils
scoreboard players set #watch daisukes.em 0
execute if score #any_damage daisukes.em matches 1 run scoreboard players set #watch daisukes.em 1
execute if score #chance daisukes.em matches 1.. run scoreboard players set #watch daisukes.em 1
scoreboard players set #watch_all daisukes.em 0
execute if score #any_damage daisukes.em matches 1 run scoreboard players set #watch_all daisukes.em 1
execute if score #chance daisukes.em matches 1.. if score #random_all daisukes.em matches 1 run scoreboard players set #watch_all daisukes.em 1
execute store result storage daisukes:ender_mobs config.radius int 1 run scoreboard players get #radius daisukes.em
scoreboard players operation #keep daisukes.em = #radius daisukes.em
scoreboard players add #keep daisukes.em 16
execute store result storage daisukes:ender_mobs config.keep int 1 run scoreboard players get #keep daisukes.em

scoreboard players set #8 daisukes.em 8
scoreboard players set #40 daisukes.em 40
scoreboard players set #hits daisukes.em 0
scoreboard players set #rr daisukes.em 0
function daisukes:modifiers/ender_mobs/clear
advancement revoke @a only daisukes:ender_mobs/player_hit
execute as @a at @s run function daisukes:modifiers/ender_mobs/intro
