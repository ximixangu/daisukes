# Com a jugador encallat (un tunel, un portal que l'ha deixat dins la roca, sorra que li ha caigut a sobre...): torna un
# pas enrere. La massa es queda: quan torni a haver-hi lloc, tornara a creixer
scoreboard players operation #n daisukes.km = @s daisukes.km_s
scoreboard players operation #n daisukes.km *= #100 daisukes.km
scoreboard players operation #d daisukes.km = #step daisukes.km
scoreboard players add #d daisukes.km 100
scoreboard players operation #n daisukes.km /= #d daisukes.km
scoreboard players operation #m daisukes.km = @s daisukes.km_s
scoreboard players remove #m daisukes.km 1
scoreboard players operation #n daisukes.km < #m daisukes.km
scoreboard players operation #n daisukes.km > #100 daisukes.km
scoreboard players operation @s daisukes.km_s = #n daisukes.km
function daisukes:modifiers/katamari/size
playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 0.5 1.2
scoreboard players set @s daisukes.km_cd 10
