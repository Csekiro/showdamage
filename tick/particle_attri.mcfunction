##粒子寿命减少
scoreboard players remove @s dp_life 1
##粒子存在计时增加
scoreboard players add @s show_damage.stay 1
#execute if score @s show_damage.stay matches 2 run function ui:showdamage/particles/scale_down

##粒子抖动
execute at @e[type=armor_stand,tag=displaying] if score @s text_bind_ams = @n[type=armor_stand,tag=displaying] text_bind_ams run tp @s ~ ~-300 ~

##透明度改动
execute if score @s dp_life matches 5 run data merge entity @s {text_opacity:100}

execute if score @s dp_life matches ..0 run kill @s


#所有伤害粒子  