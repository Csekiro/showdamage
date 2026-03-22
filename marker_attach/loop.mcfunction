execute as @e[type=marker,tag=show_damage_marker] at @a if score @s show_damage.marker = @p show_damage.marker run function ui:showdamage/marker_attach/loop2

#execute at @e[type=marker,tag=show_damage_marker] run particle electric_spark