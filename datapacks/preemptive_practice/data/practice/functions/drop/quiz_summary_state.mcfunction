playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #enabled summary_state = #state summary_state
execute if score #enabled summary_state matches 1 run scoreboard players set #state summary_state 0
execute if score #enabled summary_state matches 0 run scoreboard players set #state summary_state 1