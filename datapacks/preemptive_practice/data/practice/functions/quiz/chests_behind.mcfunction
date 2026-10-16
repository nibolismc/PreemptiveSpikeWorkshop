function practice:get_random

execute if score #result random matches 0..659 run scoreboard players set @a quiz_beh_idx 0
execute if score #result random matches 660..869 run scoreboard players set @a quiz_beh_idx 1
execute if score #result random matches 870..939 run scoreboard players set @a quiz_beh_idx 2
execute if score #result random matches 940..969 run scoreboard players set @a quiz_beh_idx 3
execute if score #result random matches 970..989 run scoreboard players set @a quiz_beh_idx 4
execute if score #result random matches 990..994 run scoreboard players set @a quiz_beh_idx 5
execute if score #result random matches 995..996 run scoreboard players set @a quiz_beh_idx 6
execute if score #result random matches 997..998 run scoreboard players set @a quiz_beh_idx 7
execute if score #result random matches 999..999 run scoreboard players set @a quiz_beh_idx 8

execute as @a run execute if score @s quiz_beh_idx matches 1.. run setblock -402 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 2.. run setblock -403 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 3.. run setblock -404 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 4.. run setblock -405 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 5.. run setblock -406 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 6.. run setblock -407 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 7.. run setblock -408 34 1983 minecraft:chest
execute as @a run execute if score @s quiz_beh_idx matches 8.. run setblock -409 34 1983 minecraft:chest