# Macro: {block, glow, color}. Com a tros nou: un bloc sencer amb llum propia (es veu igual de nit i a les coves) i el
# contorn de color. Neix petit (0,4) al mig de la casella i al tick seguent creix fins a omplir-la (seg/grow). La caixa
# de visibilitat (width, height) cobreix tot el bloc, que va de la cantonada cap a +x +y +z
$data merge entity @s {block_state: {Name: "$(block)"}, brightness: {sky: 15, block: 15}, Glowing: $(glow)b, glow_color_override: $(color), width: 2f, height: 1f, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0.3f, 0.3f, 0.3f], scale: [0.4f, 0.4f, 0.4f]}}
