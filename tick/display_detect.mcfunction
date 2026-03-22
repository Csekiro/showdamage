##监测血量变化 并传入伤害
execute store result score @s macro_hp_prs run data get entity @s Health 10

execute if score @s ui_damage_absorbed matches 1.. run function ui:showdamage/particles/operation_absorbed
scoreboard players reset @s ui_damage_absorbed

execute if score @s macro_hp_prs < @s macro_hp_1t_bf run execute as @s at @s run function ui:showdamage/particles/operation_damage

scoreboard players operation @s macro_hp_1t_bf = @s macro_hp_prs


##所有玩家@s