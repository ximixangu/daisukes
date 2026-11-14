# Macro {na, nb}: noms dels blocs. Titol i bossbar amb el bloc (o els dos) i a prop de qui ha caigut
title @a times 3t 20t 3t
execute if score #two daisukes.lava matches 0 run title @a subtitle [{"text": "is lava!", "color": "#FF5A1F", "bold": true}]
execute if score #two daisukes.lava matches 1 run title @a subtitle [{"text": "are lava!", "color": "#FF5A1F", "bold": true}]
$execute if score #two daisukes.lava matches 0 run title @a title {"translate": "block.minecraft.$(na)", "color": "#FFB347", "bold": true}
$execute if score #two daisukes.lava matches 1 run title @a title [{"translate": "block.minecraft.$(na)", "color": "#FFB347", "bold": true}, {"text": " + ", "color": "white"}, {"translate": "block.minecraft.$(nb)", "color": "#FFB347", "bold": true}]

$execute if score #two daisukes.lava matches 0 run bossbar set daisukes:lava name [{"translate": "block.minecraft.$(na)", "color": "#FFB347", "bold": true}, {"text": " is lava!", "color": "#FF5A1F"}]
$execute if score #two daisukes.lava matches 1 run bossbar set daisukes:lava name [{"translate": "block.minecraft.$(na)", "color": "#FFB347", "bold": true}, {"text": " + ", "color": "white"}, {"translate": "block.minecraft.$(nb)", "color": "#FFB347", "bold": true}, {"text": " are lava!", "color": "#FF5A1F"}]