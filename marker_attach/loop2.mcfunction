#marker为@s,所绑定的玩家为@p
execute if score @p show_damage.death matches 1.. at @s run function ui:showdamage/particles/operation_marker
scoreboard players reset @p show_damage.death

execute if score @s show_damage.stay matches 1.. run scoreboard players remove @s show_damage.stay 1
execute unless score @s show_damage.stay matches 1.. run function ui:showdamage/marker_attach/loop3
#tellraw @a [{selector:"@s",color:red},{score:{name:"@s",objective:"show_damage.marker"}}]
#tellraw @a [{selector:"@p",color:red},{score:{name:"@p",objective:"show_damage.marker"}}]