# Doble: dues seguides, la segona en menys de 0,4 s (la que toca, en blanc)
$data modify storage daisukes:rush gen append value {a: $(a), b: $(b), k: 3, s: [[{text: "$(g)", color: "#FFFFFF"}, {text: "$(h)", color: "#9CFF5A"}], [{text: "$(g)", color: "#4E8F2A"}, {text: "$(h)", color: "#FFFFFF"}]], top: {text: "  $(g)$(h)", color: "#9CFF5A"}}
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players operation #t daisukes.rush += #b daisukes.rush
