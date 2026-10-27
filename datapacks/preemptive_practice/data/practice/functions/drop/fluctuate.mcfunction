playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp t_value = #t_value_fluctuate t_value

execute if score #temp t_value matches 1 run scoreboard players set #t_value_fluctuate t_value 0


execute if score #temp t_value matches 1 run scoreboard players set #t_value_fluctuate t_value 0
execute if score #temp t_value matches 0 run scoreboard players set #t_value_fluctuate t_value 1