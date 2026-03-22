schedule clear ui:showdamage/main
schedule function ui:showdamage/_delete_scoreboard 1t
kill @e[type=marker,tag=show_damage_marker]
kill @e[type=text_display,tag=displaying]
kill @e[type=armor_stand,tag=displaying]