# Qui estigui volant cau (abans aqui hi havia @s, que en desactivar no es ningu, i no es netejava res)
execute as @a[tag=daisukes.icarus_airborne] at @s run playsound minecraft:entity.breeze.land player @a ~ ~ ~
execute as @a[tag=daisukes.icarus_airborne] run effect clear @s minecraft:levitation
tag @a remove daisukes.icarus_stop
tag @a remove daisukes.icarus_airborne
