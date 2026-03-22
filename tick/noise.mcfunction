##抖动生成
execute store result storage ui:movement x double 0.05 run random value -4..4
execute store result storage ui:movement y double 0.01 run random value -1..1
execute store result storage ui:movement z double 0.05 run random value -4..4
execute if data storage ui:movement {x:0.0d} run data modify storage ui:movement x set value 0.01d
execute if data storage ui:movement {z:0.0d} run data modify storage ui:movement z set value 0.01d