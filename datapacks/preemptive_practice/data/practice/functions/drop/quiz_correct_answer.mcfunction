playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp corr_answer = #state corr_answer
execute if score #temp corr_answer matches 1 run scoreboard players set #state corr_answer 0
execute if score #temp corr_answer matches 0 run scoreboard players set #state corr_answer 1