# Macro: {block, color}. Com a tros que ha acabat les pampallugues: el bloc i el contorn de la cua
tag @s remove daisukes.sn_flash
$data merge entity @s {block_state: {Name: "$(block)"}, glow_color_override: $(color)}
