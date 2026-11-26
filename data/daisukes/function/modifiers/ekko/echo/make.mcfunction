# Com al jugador, on es: apunta on es i quina vida te, i hi deixa el seu eco
scoreboard players operation @s daisukes.ek_t = #delay_t daisukes.ek
data modify storage daisukes:ekko new set value {}
execute store result storage daisukes:ekko new.id int 1 run scoreboard players get @s daisukes.ek_id
data modify storage daisukes:ekko new.x set from entity @s Pos[0]
data modify storage daisukes:ekko new.y set from entity @s Pos[1]
data modify storage daisukes:ekko new.z set from entity @s Pos[2]
data modify storage daisukes:ekko new.dim set from entity @s Dimension
data modify storage daisukes:ekko new.hp set from entity @s Health
function daisukes:modifiers/ekko/echo/forget with storage daisukes:ekko new
data modify storage daisukes:ekko echoes append from storage daisukes:ekko new

# L'eco: un maniqui invisible (nomes se'n veu la silueta brillant, del color de l'equip) que no es mou ni es pot
# matar. Neix petit i es fa gran 2 ticks despres, quan ja es invisible: si no, es veuria sencer un instant
summon minecraft:mannequin ~ ~ ~ {Tags: ["daisukes.ek", "daisukes.ek_new", "daisukes.ek_ok"], pose: "crouching", hide_description: true, immovable: true, Invulnerable: true, NoGravity: true, Silent: true, Glowing: true, active_effects: [{id: "minecraft:invisibility", amplifier: 0b, duration: -1, show_particles: 0b, show_icon: 0b}], attributes: [{id: "minecraft:scale", base: 0.0625d}]}
scoreboard players operation @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] daisukes.ek_id = @s daisukes.ek_id
scoreboard players set @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] daisukes.ek_t 2
team join daisukes.ekko @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1]
# Mira on miraves i fa el que feies (ajupit, dret, nedant o planant)
data modify entity @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] Rotation set from entity @s Rotation
execute unless predicate daisukes:ekko/crouching run data merge entity @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] {pose: "standing"}
execute if predicate daisukes:ekko/swimming run data merge entity @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] {pose: "swimming"}
execute if predicate daisukes:ekko/gliding run data merge entity @n[type=minecraft:mannequin,tag=daisukes.ek_new,distance=..1] {pose: "fall_flying"}

particle minecraft:dust{color:[0.33,0.33,1.0],scale:0.8} ~ ~0.8 ~ 0.25 0.4 0.25 0 10
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.5 1.6
