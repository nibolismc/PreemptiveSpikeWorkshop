playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9


execute as @a[scores={hotbar_index=15}] run scoreboard players operation #temp t_value = #t_value_fluctuate t_value

execute as @a[scores={hotbar_index=15}] run execute if score #temp t_value matches 1 run scoreboard players set #t_value_fluctuate t_value 0

execute as @a[scores={hotbar_index=15}] run execute if score #temp t_value matches 1 run scoreboard players set #t_value_fluctuate t_value 0
execute as @a[scores={hotbar_index=15}] run execute if score #temp t_value matches 0 run scoreboard players set #t_value_fluctuate t_value 1

execute as @a[scores={hotbar_index=17}] run scoreboard players operation #temp t_value = #qt_value_fluctuate t_value

execute as @a[scores={hotbar_index=17}] run execute if score #temp t_value matches 1 run scoreboard players set #qt_value_fluctuate t_value 0

execute as @a[scores={hotbar_index=17}] run execute if score #temp t_value matches 1 run scoreboard players set #qt_value_fluctuate t_value 0
execute as @a[scores={hotbar_index=17}] run execute if score #temp t_value matches 0 run scoreboard players set #qt_value_fluctuate t_value 1