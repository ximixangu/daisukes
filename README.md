# Daisuke's Challenge

Datapack per a Minecraft Java 26.1. Cada cert temps canvien els modificadors actius (Anvil Rain, Ice Run, Gorgun's Gaze...). Amb el temps, i en entrar al Nether i a l'End, n'hi ha més alhora i canvien més sovint.

## Com comença

En carregar el món (o amb `/reload`) el repte queda a punt. Quan hi ha algú connectat surt el títol **Challenge Mode** amb el rugit del drac; quan el títol marxa, compte enrere de 5 s i surt el primer modificador.

Si el servidor s'engega sense ningú, la presentació espera fins que entra el primer jugador. Sense ningú connectat el repte no avança (ni el temps de partida ni els canvis).

Per començar de zero quan ja hi sigueu tots: `/function daisukes:reset`.

## Durant la partida

- Els modificadors actius surten sempre a l'actionbar, i a cada canvi al xat: passant el ratolí per sobre del nom es veu què fa.
- La pestanya d'avançaments **Challenge Mode** té tots els modificadors amb la seva descripció; els que ja han sortit queden marcats com a completats.

## Comandes (operador)

| Comanda | Què fa |
|---|---|
| `/function daisukes:reset` | Partida nova: temps a 0, Nether i End sense visitar, presentació i tirada nova |
| `/function daisukes:debug/status` | Temps jugat, modificadors actius, quan és el pròxim canvi i fase |
| `/function daisukes:debug/skip` | Comença ara el compte enrere de 5 s del pròxim canvi |
| `/function daisukes:debug/set_active_modifier {active: "moon"}` | Força un modificador durant 2 minuts |
| `/function daisukes:debug/stop` | Atura el repte (torna amb `/reload`) |

## Configuració

A `data/daisukes/function/core/load.mcfunction` (tots els temps en segons). Després de canviar-la, `/reload`.
També es pot canviar en partida, p. ex. `/scoreboard players set #change_seconds daisukes.config 30`.

## Afegir un modificador

Copia `data/daisukes/function/modifiers/sample/` (té les instruccions al `register.mcfunction`). Incompatibilitats: [INCOMPATIBILITATS.md](INCOMPATIBILITATS.md).
