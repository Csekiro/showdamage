#伤害数字获取
scoreboard players operation @s shownum = @s macro_hp_1t_bf
scoreboard players operation @s shownum -= @s macro_hp_prs

#颜色
data modify storage minecraft:ui.damage color set value red
execute if score @s shownum matches 150.. run data merge storage minecraft:ui.damage {color:dark_red}

function ui:showdamage/particles/operation

#玩家@s