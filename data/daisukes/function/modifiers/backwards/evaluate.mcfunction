# Com el marker del jugador (on era i cap on mirava el tick anterior)
scoreboard players set #found daisukes.backwards 1

# Si ara es a prop del punt que tenia 1 bloc davant, s'ha mogut cap endavant: treu 1 cor (mal magic, travessa
# l'armadura com abans; abans era Instant Damage I, 3 cors)
execute at @s positioned ^ ^ ^1 as @a[tag=daisukes.backwards_self,distance=..0.87] run damage @s 2 minecraft:magic

# El marker passa a on es ara el jugador, mirant cap on mira (sense inclinacio)
execute at @a[tag=daisukes.backwards_self,limit=1] run tp @s ~ ~ ~ ~ 0
