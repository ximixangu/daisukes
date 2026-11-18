# Al dialeg d'opcions (menu/settings/show), l'opcio desada de cada llista surt triada
$data modify storage daisukes:menu dialog.inputs[{key: "mode"}].options[{id: "$(mode)"}].initial set value true
$data modify storage daisukes:menu dialog.inputs[{key: "start"}].options[{id: "$(start)"}].initial set value true
$data modify storage daisukes:menu dialog.inputs[{key: "every"}].options[{id: "$(every)"}].initial set value true
$data modify storage daisukes:menu dialog.inputs[{key: "max"}].options[{id: "$(max)"}].initial set value true
$data modify storage daisukes:menu dialog.inputs[{key: "change"}].options[{id: "$(change)"}].initial set value true
