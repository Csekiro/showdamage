#玩家死亡时,在marker处显示伤害数字
#uid
scoreboard objectives add show_damage.marker dummy
#死亡检测
scoreboard objectives add show_damage.death deathCount
scoreboard objectives add show_damage.stay dummy
scoreboard players reset @s show_damage.death

kill @e[type=marker,tag=show_damage_marker]

execute as @a at @s run function ui:showdamage/marker_attach/summon