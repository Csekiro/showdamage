#伤害粒子宏函数
$execute at @s run summon text_display ~ ~2.0 ~ {background:0,billboard:"center",alignment:"center",Tags:[displaying,summon],teleport_duration:3,text_opacity:255,text:{"color":"#$(5)$(4)$(3)$(2)$(1)$(0)","text":"$(dec).$(sec)",shadow_color:$(intRGBA)},Glowing:1b,brightness:{block:12,sky:12},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:$(scale)}}

##防止混淆
execute as @e[type=text_display,tag=displaying,tag=summon] at @s run function ui:showdamage/particles/showparticle2