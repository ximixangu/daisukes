# Modificadors incompatibles

Al `register.mcfunction` d'un modificador, afegeix una línia amb els que **no** poden sortir a la vegada que ell:

```mcfunction
data modify storage daisukes:registry incompatible.laser_limbo set value ["no_jump", "sonic", "gerxu", "shadow"]
```

- Hi pots posar tants noms com vulguis (entre cometes i dins de `[ ]`, encara que només n'hi hagi un).
- Va en els dos sentits: si `heisenberg` no pot anar amb `gorguns_gaze`, `gorguns_gaze` tampoc pot anar amb `heisenberg`. Només cal escriure-ho en un dels dos fitxers.
- Fes `/reload` perquè es carregui. Si un nom està mal escrit, surt un avís al xat.
- Exemples inclosos: `heisenberg` amb `gorguns_gaze` (petrificat saltaria sense parar) i `laser_limbo` amb `no_jump`, `sonic`, `gerxu` i `shadow`.

## Com tria ara

Cada cop que surt un modificador, tots els que són incompatibles amb ell es treuen dels candidats d'aquella tirada (però continuen a la pool per a les tirades següents).
Els modificadors de la tirada anterior tampoc poden tornar a sortir de seguida, sempre que n'hi hagi prou d'altres per arribar a `count`.
Si la pool es queda sense candidats compatibles abans d'arribar a `count`, es torna a omplir una vegada (i llavors sí que poden repetir els de la tirada anterior).
Si ni així n'hi ha prou, la tirada surt amb menys modificadors: vol dir que tots els que queden són incompatibles amb algun dels que ja han sortit.

Amb `#start_count 1` (el que posa ara `core/load`) només en surt un per tirada al principi, així que les incompatibilitats es noten a partir de 2 (Nether, o amb el temps).

## Per provar-ho

```
/scoreboard players set #start_count daisukes.config 3
/function daisukes:debug/skip
/data get storage daisukes:registry conflicts
```
