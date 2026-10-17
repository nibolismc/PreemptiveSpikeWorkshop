function practice:drop/plus_one
scoreboard players remove #lf quiz_sum 1
execute if score #lf quiz_sum matches 1.. run function practice:quiz/summary/view_front_loop