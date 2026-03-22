execute store result storage minecraft:ui.damage scale[0] float 0.7 run data get entity @s transformation.scale[0]
execute store result storage minecraft:ui.damage scale[1] float 0.7 run data get entity @s transformation.scale[1]
execute store result storage minecraft:ui.damage scale[2] float 0.7 run data get entity @s transformation.scale[2]
function ui:showdamage/particles/scale_down2 with storage minecraft:ui.damage