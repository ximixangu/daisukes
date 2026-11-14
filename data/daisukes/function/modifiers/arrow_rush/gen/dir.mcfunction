# Fletxa normal (g), grossa (f) i petita (s) de la direccio #i
execute if score #i daisukes.rush matches 1 run data modify storage daisukes:rush arg set value {a: 1, g: "↑", f: "▲", s: "⏶"}
execute if score #i daisukes.rush matches 2 run data modify storage daisukes:rush arg set value {a: 2, g: "←", f: "◀", s: "⏴"}
execute if score #i daisukes.rush matches 3 run data modify storage daisukes:rush arg set value {a: 3, g: "↓", f: "▼", s: "⏷"}
execute if score #i daisukes.rush matches 4 run data modify storage daisukes:rush arg set value {a: 4, g: "→", f: "▶", s: "⏵"}
