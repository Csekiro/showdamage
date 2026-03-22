#伤害数字获取
scoreboard players operation @s shownum = @s ui_damage_absorbed
tag @s add show_damage_absorbed
#颜色
data modify storage minecraft:ui.damage color set value gold

function ui:showdamage/particles/operation
tag @s remove show_damage_absorbed

#玩家@s