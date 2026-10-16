function practice:get_random

execute if score #result random matches 0..299 run scoreboard players set @a quiz_front_idx 0
execute if score #result random matches 300..749 run scoreboard players set @a quiz_front_idx 1
execute if score #result random matches 750..819 run scoreboard players set @a quiz_front_idx 2
execute if score #result random matches 920..949 run scoreboard players set @a quiz_front_idx 3
execute if score #result random matches 950..974 run scoreboard players set @a quiz_front_idx 4
execute if score #result random matches 975..987 run scoreboard players set @a quiz_front_idx 5
execute if score #result random matches 988..994 run scoreboard players set @a quiz_front_idx 6
execute if score #result random matches 995..998 run scoreboard players set @a quiz_front_idx 7
execute if score #result random matches 999 run scoreboard players set @a quiz_front_idx 8

execute as @a run execute if score @s quiz_front_idx matches 1.. run setblock -402 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 2.. run setblock -403 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 3.. run setblock -404 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 4.. run setblock -405 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 5.. run setblock -406 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 6.. run setblock -407 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 7.. run setblock -408 34 1968 minecraft:chest
execute as @a run execute if score @s quiz_front_idx matches 8.. run setblock -409 34 1968 minecraft:chest