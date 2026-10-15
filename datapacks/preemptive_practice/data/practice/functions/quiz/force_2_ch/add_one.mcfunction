function practice:get_random
execute if score #result random matches 0..499 run function practice:quiz/force_2_ch/add_one_front
execute if score #result random matches 500..999 run function practice:quiz/force_2_ch/add_one_behind