data modify storage daisukes:registry modifiers append value "arrow_rush"
data modify storage daisukes:texts map.arrow_rush set value {"text": "Arrow Rush", "color": "#FFC53D", "bold": true}
data modify storage daisukes:texts desc.arrow_rush set value "Every few seconds a sequence shows up at the top of your screen: press it (WASD, jump, sneak, click) before the bar runs out. Every step you miss shoots you. They get longer and faster over time."

# Hush: teclejar fa soroll. Backwards: amunt (W) fa mal. Sonic: cada tecla et llanca lluny. Gerxu: la cara tapa la pantalla.
# Laser Limbo i Shadow: tambe et diuen quan saltar, ajupir-te o moure't, i els seus avisos es barrejarien amb aquests
data modify storage daisukes:registry incompatible.arrow_rush set value ["hush", "backwards", "sonic", "gerxu", "laser_limbo", "shadow"]
