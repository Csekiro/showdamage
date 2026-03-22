##随机抖动宏
$summon armor_stand ~ ~300 ~ {Invisible:1b,Invulnerable:1b,Tags:[displaying,summon],Motion:[$(x),$(y),$(z)],active_effects:[{id:levitation,show_particles:0b,duration:200}]}

function ui:showdamage/tick/noise

scoreboard players operation #this_ams text_bind_ams = @s text_bind_ams
##防止混淆
execute as @e[type=armor_stand,tag=displaying,tag=summon,limit=1] run function ui:showdamage/particle_path/ams_summon
# execute as @e[type=armor_stand,tag=!displaying,distance=..2] at @s run function ui:showdamage/particle_path/avoidmess