# Ulls tancats (escala vertical gairebe 0); al tick 2 s'obren amb interpolacio (eye_open).
# see_through: es veuen a traves dels blocs. billboard center: sempre miren cap a la camera.
data merge entity @s {Tags:["daisukes.gorgun_eye"],billboard:"center",see_through:1b,shadow:1b,background:0,brightness:{sky:15,block:15},view_range:2.0f,text:[{text:"◉",color:"#1E9E4A",bold:true},"   ",{text:"◉",color:"#1E9E4A",bold:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.4f,0.02f,2.4f]}}
scoreboard players set @s daisukes.gorgun 0
