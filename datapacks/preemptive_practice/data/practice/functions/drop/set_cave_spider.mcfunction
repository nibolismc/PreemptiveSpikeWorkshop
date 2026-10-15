playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp spawner_state = #cave_spider spawner_state
execute if score #temp spawner_state matches 1 run scoreboard players set #cave_spider spawner_state 0
execute if score #temp spawner_state matches 0 run scoreboard players set #cave_spider spawner_state 1