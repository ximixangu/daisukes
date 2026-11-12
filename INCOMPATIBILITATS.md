# Modificadors incompatibles

Al `register.mcfunction` d'un modificador, afegeix una línia amb els que **no** poden sortir a la vegada que ell:

```mcfunction
data modify storage daisukes:registry incompatible.icarus set value ["balloon", "moon", "sonic"]
```

- Hi pots posar tants noms com vulguis (entre cometes i dins de `[ ]`, encara que només n'hi hagi un).
- Va en els dos sentits: si `icarus` no pot anar amb `balloon`, `balloon` tampoc pot anar amb `icarus`. Només cal escriure-ho en un dels dos fitxers.
- Fes `/reload` perquè es carregui. Si un nom està mal escrit, surt un avís al xat.
- Exemple inclòs: `icarus` no pot anar amb `balloon` (a `modifiers/icarus/register.mcfunction`).

## Com tria ara

Cada cop que surt un modificador, tots els que són incompatibles amb ell es treuen dels candidats d'aquella tirada (però continuen a la pool per a les tirades següents).
Si la pool es queda sense candidats compatibles abans d'arribar a `count`, es torna a omplir una vegada.
Si ni així n'hi ha prou, la tirada surt amb menys modificadors: vol dir que tots els que queden són incompatibles amb algun dels que ja han sortit.

Amb `count: 1` (el que posa ara `core/load`) només en surt un per tirada, així que les incompatibilitats es noten a partir de `count: 2`.

## Per provar-ho

```
/data merge storage daisukes:config {count: 3}
/function daisukes:engine/next2
/data get storage daisukes:registry conflicts
```
