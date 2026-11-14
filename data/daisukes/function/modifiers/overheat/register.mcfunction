data modify storage daisukes:registry modifiers append value "overheat"
data modify storage daisukes:texts map.overheat set value {"text": "Overheat", "color": "#FF6A3D", "bold": true}
data modify storage daisukes:texts desc.overheat set value "You keep heating up, and only water cools you down. If your heat bar fills up (45 s) you burn, 1 heart per second, until you get into water. In the Nether, bring a cauldron and a water bucket."

# Alyra's Curse fa mal a l'aigua (l'unica cosa que et refreda) i amb Flooded sempre en tens al costat (no faria res).
# Balloon Boy et llanca enlaire a cada cremada (no arribaries mai a l'aigua) i Gorgun's Gaze et deixa 8 s petrificat cremant-te
data modify storage daisukes:registry incompatible.overheat set value ["alyra", "agua", "balloon", "gorguns_gaze"]
