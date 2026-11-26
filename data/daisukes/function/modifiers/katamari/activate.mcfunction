# Katamari. Cada jugador te una massa (daisukes.km_mass) que puja quan pica blocs, mata mobs o aixafa coses, i una mida
# (daisukes.km_s, x100) que segueix el volum, com una bola que s'hi enganxa tot: volum = 1 + massa / #body i mida =
# arrel cubica del volum. Creix a salts petits (#step %), nomes si al cap li queda lloc; si es queda encallat (els ulls
# dins d'un bloc), s'encongeix fins que hi cap, sense perdre la massa. Els atributs de config.attributes van amb la
# mida. Si mor, el katamari es desfa i torna a comencar
scoreboard objectives add daisukes.km dummy
scoreboard objectives add daisukes.km_s dummy
scoreboard objectives add daisukes.km_mass dummy
scoreboard objectives add daisukes.km_next dummy
scoreboard objectives add daisukes.km_need dummy
scoreboard objectives add daisukes.km_hp dummy
scoreboard objectives add daisukes.km_cd dummy
scoreboard objectives add daisukes.km_cm dummy
scoreboard objectives add daisukes.km_vol dummy
scoreboard objectives add daisukes.km_pit dummy
scoreboard objectives add daisukes.km_pop dummy
scoreboard objectives add daisukes.km_ph dummy
scoreboard objectives add daisukes.km_kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add daisukes.km_dead deathCount
scoreboard objectives add daisukes.km_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add daisukes.km_run minecraft.custom:minecraft.sprint_one_cm
function daisukes:modifiers/katamari/mined/add

# ===================== CONFIGURACIO =====================
# Mida maxima, x100 (400 = 4 vegades mes gran; de 100 a 1000)
scoreboard players set #max daisukes.km 400
# Massa del cos: la que cal per doblar el volum (mes = creix mes a poc a poc). Mida 2 = 7 x #body, mida 3 = 26 x #body
scoreboard players set #body daisukes.km 20
# Cada cop que creix, quant creix (% de la mida que te; de 1 a 25)
scoreboard players set #step daisukes.km 5
# Massa que dona cada cosa
scoreboard players set #mine daisukes.km 2
scoreboard players set #crush daisukes.km 1
scoreboard players set #kill daisukes.km 10
# A mes de #kill: mobs grossos (tag daisukes:katamari/big) i caps (tag daisukes:katamari/boss)
scoreboard players set #kill_big daisukes.km 30
scoreboard players set #kill_boss daisukes.km 200
# Des de quina mida (x100) aixafa plantes (tag crush_small) i fulles, cactus, bambu... (tag crush_big). 0 = mai
scoreboard players set #plants daisukes.km 130
scoreboard players set #leaves daisukes.km 200
# Mobs que aixafa tocant-los: els que tenen tanta vida o menys com #mobs x (mida - 1). 0 = mai
scoreboard players set #mobs daisukes.km 8
# Des de quina mida (x100) se senten les trepitjades i els cops en aterrar. 0 = mai
scoreboard players set #steps daisukes.km 150
# 1 = en morir es queda la mida (0 = torna a comencar)
scoreboard players set #keep daisukes.km 0
# Atributs que van amb la mida. per: quant canvien per cada +1 de mida, en % (100 = el doble a mida 2, el triple a mida
# 3...). add_multiplied_total multiplica; add_value suma (per als que valen 0 de base: 25 = +0.25 per cada +1). El de
# scale es la mida: no el treguis
data modify storage daisukes:katamari config.attributes set value [{id: "minecraft:scale", op: "add_multiplied_total", per: 100}, {id: "minecraft:block_interaction_range", op: "add_multiplied_total", per: 100}, {id: "minecraft:entity_interaction_range", op: "add_multiplied_total", per: 100}, {id: "minecraft:step_height", op: "add_multiplied_total", per: 100}, {id: "minecraft:safe_fall_distance", op: "add_multiplied_total", per: 100}, {id: "minecraft:movement_speed", op: "add_multiplied_total", per: 30}, {id: "minecraft:jump_strength", op: "add_multiplied_total", per: 40}, {id: "minecraft:gravity", op: "add_multiplied_total", per: 25}, {id: "minecraft:knockback_resistance", op: "add_value", per: 25}, {id: "minecraft:explosion_knockback_resistance", op: "add_value", per: 25}, {id: "minecraft:attack_knockback", op: "add_value", per: 50}]
# ========================================================

execute if score #max daisukes.km matches ..100 run scoreboard players set #max daisukes.km 100
execute if score #max daisukes.km matches 1001.. run scoreboard players set #max daisukes.km 1000
execute if score #body daisukes.km matches ..0 run scoreboard players set #body daisukes.km 1
execute if score #body daisukes.km matches 10001.. run scoreboard players set #body daisukes.km 10000
execute if score #step daisukes.km matches ..0 run scoreboard players set #step daisukes.km 1
execute if score #step daisukes.km matches 26.. run scoreboard players set #step daisukes.km 25

# Constants
scoreboard players set #1 daisukes.km 1
scoreboard players set #2 daisukes.km 2
scoreboard players set #3 daisukes.km 3
scoreboard players set #10 daisukes.km 10
scoreboard players set #15 daisukes.km 15
scoreboard players set #18 daisukes.km 18
scoreboard players set #24 daisukes.km 24
scoreboard players set #45 daisukes.km 45
scoreboard players set #50 daisukes.km 50
scoreboard players set #20 daisukes.km 20
scoreboard players set #100 daisukes.km 100
scoreboard players set #162 daisukes.km 162
# Zancada (cm per cada x1 de mida)
scoreboard players set #stride daisukes.km 120
scoreboard players set #clock daisukes.km 0
scoreboard players set #ph daisukes.km 0

execute as @a[tag=daisukes.km_land] run function daisukes:modifiers/katamari/landed
execute as @a at @s run function daisukes:modifiers/katamari/intro
