# Daisuke's Challenge

Datapack per a Minecraft Java 26.1. Cada cert temps canvien els modificadors actius (Anvil Rain, Ice Run, Gorgun's Gaze...). Quants en surten a cada canvi va per fases, que només pugen:

1. Al principi, 1.
2. Als 40 minuts o en entrar al Nether (el que passi abans), dificultat **2-1**: 2 i 1 alternats a cada canvi.
3. Amb la primera vara de blaze (*Into Fire*), 2.
4. 50 minuts després de la primera vara de blaze, 3.
5. A l'End (batalla contra el drac), 4, i canvien cada minut.

Quan puja de fase surt al xat i, si n'han de sortir més dels que hi ha, el canvi arriba d'aquí a 5 s.

## Com comença

El repte no comença sol: cal fer `/function daisukes:start` (o `/function daisukes:reset`). Mentre no ha començat, en entrar al món (o amb `/reload`) surt al xat una explicació breu i la comanda per començar (clicant-la s'escriu al xat). Amb `start` surt el títol **Challenge Mode** amb el rugit del drac; quan el títol marxa, compte enrere de 5 s i surt el primer modificador.

Si sortiu del món i hi torneu a entrar (o feu `/reload`) a mitja partida, el repte continua tal com era, sense títol: els mateixos modificadors i el mateix temps fins al pròxim canvi (sense ningú connectat el temps no avança). Sortir i tornar a entrar no canvia la tirada.

Si el servidor s'engega sense ningú, el repte espera fins que entra el primer jugador. Sense ningú connectat el repte no avança (ni el temps de partida ni els canvis).

Per començar de zero (temps a 0, Nether i End sense visitar): `/function daisukes:reset`.

## Durant la partida

- Els modificadors actius surten sempre a l'actionbar, i a cada canvi al xat: passant el ratolí per sobre del nom es veu què fa.
- Si mor qualsevol jugador, el repte s'acaba: surt **YOU DIED** amb un so de derrota i s'aturen els modificadors. Per tornar-hi, partida nova amb `/function daisukes:reset`.
- La pestanya d'avançaments **Challenge Mode** té tots els modificadors amb la seva descripció; els que ja han sortit queden marcats com a completats.

## Servidor amb Fahare

El datapack també funciona en un servidor Paper amb el plugin [Fahare](https://modrinth.com/plugin/fahare), que crea un món nou amb una altra llavor quan mor algú. Quan Fahare reinicia el món, la partida del datapack també torna a zero i queda sense començar: surt l'explicació i cal tornar a fer `/function daisukes:start`.

## Comandes (operador)

| Comanda | Què fa |
|---|---|
| `/function daisukes:start` | Comença el repte (títol i primer modificador). Si s'havia aturat amb `debug/stop`, continua amb els mateixos modificadors i el mateix temps |
| `/function daisukes:reset` | Partida nova: temps a 0, Nether i End sense visitar, presentació i tirada nova |
| `/function daisukes:debug/status` | Temps jugat, modificadors actius, quan és el pròxim canvi i fase |
| `/function daisukes:debug/skip` | Comença ara el compte enrere de 5 s del pròxim canvi |
| `/function daisukes:debug/set_active_modifier {active: "moon"}` | Força un modificador durant 2 minuts |
| `/function daisukes:debug/stop` | Atura el repte (torna amb `/function daisukes:start`) |

## Configuració

A `data/daisukes/function/core/load.mcfunction` (tots els temps en segons). Després de canviar-la, `/reload`.
També es pot canviar en partida, p. ex. `/scoreboard players set #change_seconds daisukes.config 30`.

## Afegir un modificador

Copia `data/daisukes/function/modifiers/sample/` (té les instruccions al `register.mcfunction`). Incompatibilitats: [INCOMPATIBILITATS.md](INCOMPATIBILITATS.md).
