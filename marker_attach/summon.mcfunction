#竞技场restart触发

execute store result score @s show_damage.marker run data get entity @s UUID[0]
summon marker ~ ~ ~ {Tags:[show_damage_marker,summon]}
scoreboard players operation @e[type=marker,tag=show_damage_marker,tag=summon] show_damage.marker = @s show_damage.marker
tag @e[type=marker,tag=show_damage_marker,tag=summon] remove summon