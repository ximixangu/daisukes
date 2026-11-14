# Pas fet: un ✔ a dalt i el seguent
$data modify storage daisukes:rush p.$(id).done append value {text: "✔  ", color: "#5CFF8A"}
function daisukes:modifiers/arrow_rush/next with storage daisukes:rush tmp
