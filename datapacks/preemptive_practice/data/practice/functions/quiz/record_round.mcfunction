data modify storage practice:quiz new set value {}

execute store result storage practice:quiz new.n int 1 run scoreboard players get @p current_round
execute store result storage practice:quiz new.front int 1 run scoreboard players get @p quiz_front_idx
execute store result storage practice:quiz new.behind int 1 run scoreboard players get @p quiz_beh_idx
execute store result storage practice:quiz new.spawner int 1 run scoreboard players get @p quiz_spawner_idx
execute store result storage practice:quiz new.guess byte 1 run scoreboard players get @p quiz_guess
execute store result storage practice:quiz new.ok byte 1 run scoreboard players get @p answer_correct

function practice:quiz/fill_cur
data modify storage practice:quiz new.sp_txt set from storage practice:quiz cur.s1
data modify storage practice:quiz new.sp2_txt set from storage practice:quiz cur.s2
data modify storage practice:quiz new.sp3_txt set from storage practice:quiz cur.s3

execute store result storage practice:quiz new.spikes int 1 run scoreboard players get #spikes quiz_cfg
execute store result storage practice:quiz new.b1 int 1 run scoreboard players get @p quiz_b1_idx
execute store result storage practice:quiz new.b2 int 1 run scoreboard players get @p quiz_b2_idx
execute store result storage practice:quiz new.sp2 int 1 run scoreboard players get @p quiz_sp2_idx
execute store result storage practice:quiz new.sp3 int 1 run scoreboard players get @p quiz_sp3_idx

execute if score @p quiz_guess matches 1 run data modify storage practice:quiz new.guess_txt set value '{"text":"Real","color":"green"}'
execute if score @p quiz_guess matches 0 run data modify storage practice:quiz new.guess_txt set value '{"text":"Fake","color":"red"}'

execute store result storage practice:quiz new.ok byte 1 run scoreboard players get @p answer_correct
execute if score @p answer_correct matches 1 run data modify storage practice:quiz new.glyph set value '{"text":"█","color":"green"}'
execute if score @p answer_correct matches 0 run data modify storage practice:quiz new.glyph set value '{"text":"█","color":"red"}'

scoreboard players add #total quiz_sum 1
execute if score @p answer_correct matches 1 run scoreboard players add #right quiz_sum 1

data modify storage practice:quiz glyphs append from storage practice:quiz new.glyph
data modify storage practice:quiz rounds append from storage practice:quiz new