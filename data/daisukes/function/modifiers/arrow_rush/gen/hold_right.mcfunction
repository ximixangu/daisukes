# Mantenir cap a la dreta: la cua va al darrere (a l'esquerra)
$data modify storage daisukes:rush gen append value {a: $(a), k: 4, s: [[{text: "————", color: "#4A4A4A"}, {text: " $(g)", color: "#FF9A3D"}], [{text: "———", color: "#4A4A4A"}, {text: "— $(g)", color: "#FF9A3D"}], [{text: "——", color: "#4A4A4A"}, {text: "—— $(g)", color: "#FF9A3D"}], [{text: "—", color: "#4A4A4A"}, {text: "——— $(g)", color: "#FF9A3D"}]], top: {text: "  —$(g)", color: "#FF9A3D"}}
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players add #t daisukes.rush 16
