playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp round_result = #state round_result
execute if score #temp round_result matches 1 run scoreboard players set #state round_result 0
execute if score #temp round_result matches 0 run scoreboard players set #state round_result 1