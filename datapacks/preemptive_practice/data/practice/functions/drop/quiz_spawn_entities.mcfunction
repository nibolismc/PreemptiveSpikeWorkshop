playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp quiz_entities = #state quiz_entities
execute if score #temp quiz_entities matches 1 run scoreboard players set #state quiz_entities 0
execute if score #temp quiz_entities matches 0 run scoreboard players set #state quiz_entities 1