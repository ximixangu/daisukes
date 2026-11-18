# Daisuke's Challenge

Datapack per a Minecraft Java 26.1, per a 1 o més jugadors. Cada cert temps canvien els modificadors actius (Anvil Rain, Ice Run, Gorgun's Gaze...) i cal matar el drac de l'End. Quants modificadors hi ha alhora, cada quant canvien i quins poden sortir es tria al menú.

## El menú

Tot es fa des d'un menú amb finestres (diàlegs de Minecraft):

- En un món nou surt al xat una explicació breu amb l'enllaç **[Open the menu]**.
- També és al menú de pausa (botó **Daisuke's Challenge**) i a la tecla d'accions ràpides (**G** per defecte).

Té quatre botons: **Start**, **Settings**, **Modifiers** i **New game**. Funciona sense trucs ni operador (els botons fan servir `/trigger`), tant en un sol jugador com en un servidor, i qualsevol jugador pot canviar la configuració: quan algú la canvia, surt al xat per a tothom.

Fins que algú prem **Start**, ningú es pot moure, saltar ni tocar blocs o criatures, i ningú rep mal (així ningú avança feina abans d'hora). La barra d'accions recorda com obrir el menú. Als jugadors en creatiu o espectador no els afecta.

Amb Start surt el títol **Challenge Mode** amb el rugit del drac; quan el títol marxa, compte enrere de 5 s i surt el primer modificador.

## Settings

| Opció | Valors | Per defecte |
|---|---|---|
| Difficulty | Daisuke's milestones, Goes up over time, Fixed | Daisuke's milestones |
| Modifiers at the start | 1 a 5 | 1 |
| Over time, one more every | 10, 15, 20, 30 o 45 min, 1 hora | 30 min |
| Most at once | No limit, 2 a 6 | No limit |
| Modifiers change every | 30 s, 45 s, 1 min, 1 min 30 s, 2, 3, 4 o 5 min | 2 min |
| They change twice as fast in the End | sí / no | sí |
| A death ends the challenge | sí / no | sí |

A dalt de tot hi ha el resum de la configuració desada. Els canvis es desen amb **Save**; si la partida ja ha començat, valen a partir del pròxim canvi de modificadors.

**Daisuke's milestones** (la del repte original). Les fases només pugen:

1. Al principi, 1.
2. Als 40 minuts o en entrar al Nether (el que passi abans), dificultat **2-1**: 2 i 1 alternats a cada canvi.
3. Quan ja s'ha aconseguit una vara de blaze (*Into Fire*) i s'ha fet un tracte amb un piglin (*Oh Shiny*), en qualsevol ordre, 2.
4. 40 minuts després, dificultat **3-2**.
5. En arribar a la fortalesa (*Eye Spy*), 3.
6. A l'End (batalla contra el drac), 4.

Amb més modificadors a l'inici, totes les fases en tenen els mateixos de més (amb 2: 2 · 3-2 · 3 · 4-3 · 4 · 5). **Most at once** posa un màxim a totes les fases. **Goes up over time** en suma un cada cert temps de partida i **Fixed** no puja mai. Quan puja la dificultat surt al xat i, si n'han de sortir més dels que hi ha, el canvi arriba d'aquí a 5 s.

Opcions predefinides (es desen de seguida):

| | Dificultat | Canvien cada | Morir acaba el repte |
|---|---|---|---|
| **Default** | Daisuke's milestones, 1 a l'inici, sense màxim | 2 min (1 min a l'End) | sí |
| **Easy** | Daisuke's milestones, com a molt 2 alhora | 3 min (1 min 30 s a l'End) | no |
| **Hard** | Daisuke's milestones, 2 a l'inici (2 · 3-2 · 3 · 4-3 · 4 · 5) | 1 min 30 s (45 s a l'End) | sí |
| **Chaos** | 3 a l'inici i un més cada 15 min, fins a 6 | 30 s (15 s a l'End) | sí |

**Default** és la configuració original i, a més, torna a activar tots els modificadors.

## Modifiers

La llista de modificadors, per ordre alfabètic, de 18 en 18. Passant el ratolí per sobre d'un modificador es veu què fa; fent-hi clic s'activa o es desactiva. Els desactivats no surten mai. Hi ha botons per activar-los o desactivar-los tots (per exemple, per desactivar-los tots i activar només els que es vulguin). Cal que n'hi hagi almenys un d'activat per poder començar.

Si la partida ja ha començat, els canvis valen a partir del pròxim canvi de modificadors.

## Durant la partida

- Els modificadors actius surten sempre a la barra d'accions.
- Si mor qualsevol jugador (i al menú hi ha **A death ends the challenge**), el repte s'acaba: surt **YOU DIED** amb un so de derrota i s'aturen els modificadors.
- Quan mor el drac, victòria: títol, música i petards.
- La pestanya d'avançaments **Challenge Mode** té tots els modificadors amb la seva descripció; els que ja han sortit queden marcats com a completats.

Si sortiu del món i hi torneu a entrar (o feu `/reload`) a mitja partida, el repte continua tal com era, sense títol: els mateixos modificadors i el mateix temps fins al pròxim canvi. Sense ningú connectat el repte no avança.

## Partida nova

**New game** (al menú, demana confirmació) torna a zero el temps, les fites i la dificultat, en el mateix món. La configuració i els modificadors triats es queden. La partida queda sense començar, amb tothom quiet, fins que algú prem Start. Quan la partida s'ha acabat (victòria o derrota), Start també pregunta si se'n vol fer una de nova.

## Servidor amb Fahare

El datapack també funciona en un servidor Paper amb el plugin [Fahare](https://modrinth.com/plugin/fahare), que crea un món nou amb una altra llavor quan mor algú (amb Fahare això passa sempre, encara que al menú morir no acabi el repte). Quan Fahare reinicia el món, la partida del datapack també torna a zero i queda sense començar: tothom quiet fins que algú prem Start.

## Comandes (operador)

No calen per jugar; són per a qui administra el món.

| Comanda | Què fa |
|---|---|
| `/function daisukes:start` | Com Start al menú. Si s'havia aturat amb `debug/stop`, continua amb els mateixos modificadors i el mateix temps |
| `/function daisukes:reset` | Partida nova i en marxa de seguida, amb la presentació (com New game i Start) |
| `/function daisukes:debug/status` | Temps jugat, modificadors actius, quan és el pròxim canvi i fase |
| `/function daisukes:debug/skip` | Comença ara el compte enrere de 5 s del pròxim canvi |
| `/function daisukes:debug/set_active_modifier {active: "moon"}` | Força un modificador durant 2 minuts |
| `/function daisukes:debug/stop` | Atura el repte (torna amb Start) |

## Configuració avançada

La configuració del menú es guarda al món (scoreboard `daisukes.config` i storage `daisukes:settings`): `/reload` no la canvia. Els valors per defecte són a `data/daisukes/function/settings/defaults.mcfunction` i les opcions predefinides a `settings/preset_*.mcfunction`.

Les constants de les fites de **Daisuke's milestones** (els 40 minuts, quants n'hi ha a cada fase) i la durada dels petards de la victòria són a `data/daisukes/function/core/load.mcfunction`. Després de canviar-les, `/reload`.

## Treure el datapack

Si es treu el datapack abans de prémer Start, els jugadors es queden quiets (són modificadors d'atribut guardats al jugador). Millor prémer Start abans de treure'l; si no, cal treure'ls a mà:

```
/execute as @a run attribute @s minecraft:movement_speed modifier remove daisukes:freeze
/execute as @a run attribute @s minecraft:jump_strength modifier remove daisukes:freeze
/execute as @a run attribute @s minecraft:block_interaction_range modifier remove daisukes:freeze
/execute as @a run attribute @s minecraft:entity_interaction_range modifier remove daisukes:freeze
/effect clear @a minecraft:resistance
```

## Afegir un modificador

Copia `data/daisukes/function/modifiers/sample/` (té les instruccions al `register.mcfunction`) i afegeix-lo a `data/daisukes/tags/function/register.json`. Surt sol a la llista del menú, en l'ordre d'aquest fitxer (alfabètic pel nom). Incompatibilitats: [INCOMPATIBILITATS.md](INCOMPATIBILITATS.md).
