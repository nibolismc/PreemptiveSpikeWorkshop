data modify storage practice:quiz new set value {}

execute store result storage practice:quiz new.n int 1 run scoreboard players get @p current_round
execute store result storage practice:quiz new.front int 1 run scoreboard players get @p quiz_front_idx
execute store result storage practice:quiz new.behind int 1 run scoreboard players get @p quiz_beh_idx
execute store result storage practice:quiz new.spawner int 1 run scoreboard players get @p quiz_spawner_idx
execute store result storage practice:quiz new.guess byte 1 run scoreboard players get @p quiz_guess
execute store result storage practice:quiz new.ok byte 1 run scoreboard players get @p answer_correct

execute if score @p quiz_spawner_idx matches 0 run data modify storage practice:quiz new.sp_txt set value '{"text":"Silverfish","color":"aqua"}'
execute if score @p quiz_spawner_idx matches 1 run data modify storage practice:quiz new.sp_txt set value '{"text":"Cave Spider","color":"light_purple"}'
execute if score @p quiz_spawner_idx matches 2 run data modify storage practice:quiz new.sp_txt set value '{"text":"Spider","color":"dark_purple"}'
execute if score @p quiz_spawner_idx matches 3 run data modify storage practice:quiz new.sp_txt set value '{"text":"Skeleton","color":"dark_purple"}'
execute if score @p quiz_spawner_idx matches 4 run data modify storage practice:quiz new.sp_txt set value '{"text":"Zombie","color":"dark_purple"}'
execute if score @p quiz_spawner_idx matches 5 run data modify storage practice:quiz new.sp_txt set value '{"text":"None","color":"gray"}'

execute if score @p quiz_guess matches 1 run data modify storage practice:quiz new.guess_txt set value '{"text":"Real","color":"green"}'
execute if score @p quiz_guess matches 0 run data modify storage practice:quiz new.guess_txt set value '{"text":"Fake","color":"red"}'

execute store result storage practice:quiz new.ok byte 1 run scoreboard players get @p answer_correct
execute if score @p answer_correct matches 1 run data modify storage practice:quiz new.glyph set value '{"text":"█","color":"green"}'
execute if score @p answer_correct matches 0 run data modify storage practice:quiz new.glyph set value '{"text":"█","color":"red"}'

scoreboard players add #total quiz_sum 1
execute if score @p answer_correct matches 1 run scoreboard players add #right quiz_sum 1

data modify storage practice:quiz glyphs append from storage practice:quiz new.glyph
data modify storage practice:quiz rounds append from storage practice:quiz new