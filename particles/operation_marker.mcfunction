#伤害数字已存入@s shownum,无需再次获取
#marker执行,shownum存的是玩家实时血量
scoreboard players set @s show_damage.stay 100

#颜色
data modify storage minecraft:ui.damage color set value red
execute if score @s shownum matches 150.. run data merge storage minecraft:ui.damage {color:dark_red}

function ui:showdamage/particles/operation
#marker @s