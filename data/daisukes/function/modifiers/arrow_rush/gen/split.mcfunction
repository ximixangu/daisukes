# Es parteix: al primer cop surten dues de petites (tres cops en total)
$data modify storage daisukes:rush gen append value {a: $(a), k: 2, s: [{text: "$(g)", color: "#FF7AC0"}, {text: "$(s) $(s)", color: "#FF7AC0"}, {text: "$(s)", color: "#FF7AC0"}], top: {text: "  $(g)", color: "#FF7AC0"}}
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players operation #t daisukes.rush += #b daisukes.rush
