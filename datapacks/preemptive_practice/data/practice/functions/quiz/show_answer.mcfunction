execute if score #spikes quiz_cfg matches ..1 run function practice:quiz/show_answer_1
execute if score #spikes quiz_cfg matches 2.. if score #state corr_answer matches 1 as @a run function practice:quiz/show_answer_multi
