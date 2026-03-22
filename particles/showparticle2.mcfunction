##防止混淆并加上粒子寿命
tag @s remove summon
tag @s add displaying
scoreboard players operation @s dp_life = #damageparticle dp_life
execute store result score @s text_bind_ams run data get entity @s UUID[0]

##随机抖动
function ui:showdamage/particle_path/noise with storage ui:movement