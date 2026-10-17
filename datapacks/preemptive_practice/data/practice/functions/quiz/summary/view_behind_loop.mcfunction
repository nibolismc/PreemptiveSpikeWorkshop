function practice:drop/plus_one
scoreboard players remove #lb quiz_sum 1
execute if score #lb quiz_sum matches 1.. run function practice:quiz/summary/view_behind_loop