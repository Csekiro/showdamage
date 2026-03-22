#伤害粒子宏函数
$execute at @s run summon text_display ~ ~2.0 ~ {background:0,billboard:"center",alignment:"center",Tags:[damage_particle,summon],teleport_duration:3,text_opacity:255,text:{"color":$(color),"text":"$(dec).$(sec)"},Glowing:1b,brightness:{block:12,sky:12},shadow:true,shadow_strength:0.6,shadow_radius:2,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:$(scale)}}

##防止混淆
execute as @e[type=text_display,tag=damage_particle,tag=summon] at @s run function ui:showdamage/particles/showparticle2