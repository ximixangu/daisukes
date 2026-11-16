# Apunta què hem fet (per desfer-ho després) i guarda a part l'objecte de S
$data modify storage daisukes:shift p."$(u)" set value {s:$(s),t:$(t)}
$data modify storage daisukes:shift p."$(u)".item set from storage daisukes:shift a
