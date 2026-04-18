#伤害数字已存入@s shownum,无需再次获取
#marker执行,shownum存的是玩家实时血量
scoreboard players set @s show_damage.stay 100

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
#marker @s