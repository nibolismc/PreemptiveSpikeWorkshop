playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp dungeon_2ch = #state dungeon_2ch
execute if score #temp dungeon_2ch matches 1 run scoreboard players set #state dungeon_2ch 0
execute if score #temp dungeon_2ch matches 0 run scoreboard players set #state dungeon_2ch 1