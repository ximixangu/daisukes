# Macro {cmd: "..."}: executa la comanda a cada mon on es pot jugar. Per a gamerule, time i weather:
# en el joc normal valen per a tot el servidor, pero en un servidor Paper cada mon te les seves, i amb
# Fahare l'overworld on es juga es fahare:overworld (sense Fahare aquesta ultima linia falla i no fa res)
$execute in minecraft:overworld run $(cmd)
$execute in minecraft:the_nether run $(cmd)
$execute in minecraft:the_end run $(cmd)
$execute in fahare:overworld run $(cmd)
