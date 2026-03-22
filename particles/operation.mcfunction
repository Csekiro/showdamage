scoreboard players operation #dec shownum = @s shownum
scoreboard players operation #sec shownum = @s shownum

scoreboard players operation #dec shownum /= #10 math
scoreboard players operation #sec shownum %= #10 math
###以上为伤害数字计算

execute store result storage minecraft:ui.damage dec int 1 run scoreboard players get #dec shownum
execute store result storage minecraft:ui.damage sec int 1 run scoreboard players get #sec shownum

#缩放初始值
scoreboard players set #scale dp_life 1200
data modify storage minecraft:ui.damage scale set value [0,0,0]

#持续时间初始值
scoreboard players set #damageparticle dp_life 12


##更改样式

#缩放
scoreboard players operation #scale_decorate dp_life = @s shownum
scoreboard players operation #scale_decorate dp_life *= #5 math
scoreboard players operation #scale dp_life += #scale_decorate dp_life
#1.25倍
scoreboard players operation #scale dp_life *= #5 math
scoreboard players operation #scale dp_life /= #4 math

execute store result storage minecraft:ui.damage scale[0] float 0.001 run scoreboard players get #scale dp_life
execute store result storage minecraft:ui.damage scale[1] float 0.001 run scoreboard players get #scale dp_life
execute store result storage minecraft:ui.damage scale[2] float 0.001 run scoreboard players get #scale dp_life

#持续时间
scoreboard players operation #damageparticle_decorate dp_life = @s shownum
scoreboard players operation #damageparticle_decorate dp_life /= #10 math
scoreboard players operation #damageparticle dp_life += #damageparticle_decorate dp_life

##回收
scoreboard players set #dec shownum 0
scoreboard players set #sec shownum 0
scoreboard players set @s shownum 0

execute at @s run function ui:showdamage/particles/showparticle with storage minecraft:ui.damage

#玩家@s