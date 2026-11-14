# Mantenir: la cua creix mentre la tens premuda (16 ticks); si la deixes anar, torna a comencar
$data modify storage daisukes:rush gen append value {a: $(a), k: 4, s: [[{text: "$(g) ", color: "#FF9A3D"}, {text: "————", color: "#4A4A4A"}], [{text: "$(g) —", color: "#FF9A3D"}, {text: "———", color: "#4A4A4A"}], [{text: "$(g) ——", color: "#FF9A3D"}, {text: "——", color: "#4A4A4A"}], [{text: "$(g) ———", color: "#FF9A3D"}, {text: "—", color: "#4A4A4A"}]], top: {text: "  $(g)—", color: "#FF9A3D"}}
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players add #t daisukes.rush 16
