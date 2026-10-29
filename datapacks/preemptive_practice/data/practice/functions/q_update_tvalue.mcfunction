scoreboard players operation #qt_value t_value += #qt_value_diff t_value
execute if score #qt_value t_value matches ..0 run scoreboard players set #qt_value t_value 1

scoreboard players set #qt_value_tmp t_value 0

execute if score #qt_value_diff t_value matches 1.. run function practice:q_spawn_cows_loop
execute if score #qt_value_diff t_value matches ..-1 run function practice:q_remove_cows_loop