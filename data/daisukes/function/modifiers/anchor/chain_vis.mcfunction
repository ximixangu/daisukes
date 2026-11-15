# Com a una baula: visible si el seu numero es mes petit que #n
execute if score @s daisukes.anchor_i < #n daisukes.anchor run data merge entity @s {transformation: {scale: [0.8f, 0.8f, 0.8f]}}
execute if score @s daisukes.anchor_i >= #n daisukes.anchor run data merge entity @s {transformation: {scale: [0f, 0f, 0f]}}
