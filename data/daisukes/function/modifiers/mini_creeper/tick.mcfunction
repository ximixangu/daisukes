# Pack actualitzat a mitja partida amb el modificador ja actiu (per exemple, quan encara era Creeper):
# no s'havia fet l'activate i falten els scoreboards
execute unless data storage daisukes:soul {ready: true} run function daisukes:modifiers/mini_creeper/activate

# Cada mob nou a prop d'un jugador porta un marker a sobre. Nomes mobs: ni objectes, fletxes, vehicles, displays
# dels altres modificadors... (#daisukes:non_mob), ni cavalls, porcs, camells... (#daisukes:rideable), que amb el
# marker a sobre ja no es podien muntar
execute at @e[type=minecraft:player,gamemode=!spectator] as @e[distance=..96,type=!minecraft:player,type=!#daisukes:non_mob,type=!#daisukes:rideable,tag=!daisukes.soul_host] run function daisukes:modifiers/mini_creeper/mark

# Un jugador acaba de matar un mob marcat (avancament mini_creeper/kill): del cos, que encara s'esta morint
# (vida 0, 1 s), en surten les animes
execute as @a[tag=daisukes.soul_killer] at @s as @e[type=minecraft:marker,tag=daisukes.soul_marker,distance=..96] if predicate daisukes:mini_creeper/dying run function daisukes:modifiers/mini_creeper/release
tag @a remove daisukes.soul_killer

# Animes picades (clic esquerre o dret, de qualsevol jugador): queden lliures sense fer mal
execute as @e[type=minecraft:interaction,tag=daisukes.soul] if data entity @s attack at @s run function daisukes:modifiers/mini_creeper/soul/pop
execute as @e[type=minecraft:interaction,tag=daisukes.soul] if data entity @s interaction at @s run function daisukes:modifiers/mini_creeper/soul/pop

# Les que surten del cos, i les que ja empaiten el seu jugador. Les que no l'han trobat (mort, espectador,
# desconnectat, en una altra dimensio o a mes de 96 blocs) s'esvaeixen
execute as @e[type=minecraft:interaction,tag=daisukes.soul_launch] at @s run function daisukes:modifiers/mini_creeper/soul/launch
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/mini_creeper/soul/player
execute as @e[type=minecraft:interaction,tag=daisukes.soul,tag=!daisukes.soul_launch,tag=!daisukes.soul_seen] at @s run function daisukes:modifiers/mini_creeper/soul/fizzle
tag @e[type=minecraft:interaction,tag=daisukes.soul_seen] remove daisukes.soul_seen

# Flama blava de totes (deixa rastre) i, cada 4 ticks, una cara d'anima
execute at @e[type=minecraft:interaction,tag=daisukes.soul] run particle minecraft:soul_fire_flame ~ ~0.35 ~ 0.05 0.05 0.05 0.005 2 force
scoreboard players add #clock daisukes.soul 1
scoreboard players operation #c daisukes.soul = #clock daisukes.soul
scoreboard players operation #c daisukes.soul %= #4 daisukes.soul
execute if score #c daisukes.soul matches 0 at @e[type=minecraft:interaction,tag=daisukes.soul] run particle minecraft:soul ~ ~0.35 ~ 0.08 0.08 0.08 0.02 1 force

# Cada segon: els markers que s'han quedat sense mob (ha desaparegut, s'ha convertit, l'ha mort una altra cosa...) fora
execute if score #clock daisukes.soul matches 20.. run function daisukes:modifiers/mini_creeper/tidy
