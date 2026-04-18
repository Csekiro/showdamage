##各个tick
execute as @e[] at @s run function ui:showdamage/tick/display_detect
execute as @a at @s run function ui:showdamage/marker_attach/loop

execute as @e[type=text_display,tag=displaying] at @s run function ui:showdamage/tick/particle_attri
execute as @e[type=armor_stand,tag=displaying] at @s run function ui:showdamage/tick/armor_attri

schedule function ui:showdamage/main 1t append
