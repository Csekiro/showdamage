#伤害数字获取
scoreboard players operation @s shownum = @s macro_hp_1t_bf
scoreboard players operation @s shownum -= @s macro_hp_prs

#颜色
function ui:showdamage/colorful/random
data modify storage minecraft:ui.damage 0 set from storage rgba 0
data modify storage minecraft:ui.damage 1 set from storage rgba 1
data modify storage minecraft:ui.damage 2 set from storage rgba 2
data modify storage minecraft:ui.damage 3 set from storage rgba 3
data modify storage minecraft:ui.damage 4 set from storage rgba 4
data modify storage minecraft:ui.damage 5 set from storage rgba 5
data modify storage minecraft:ui.damage intRGBA set from storage rgba intRGBA

# data modify storage minecraft:ui.damage color set value red
# execute if score @s shownum matches 150.. run data merge storage minecraft:ui.damage {color:dark_red}

function ui:showdamage/particles/operation

#玩家@s