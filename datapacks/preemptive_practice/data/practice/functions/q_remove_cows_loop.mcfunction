scoreboard players remove #qt_value_tmp t_value 1
execute positioned -404.5 49.00 1912.5 run tp @e[type=cow, distance=..1,limit=1] 9 9 9
execute positioned 9 9 9 run kill @e[type=cow, distance=..1,limit=1]

execute if score #qt_value_tmp t_value > #qt_value_diff t_value run function practice:q_remove_cows_loop
execute if score #qt_value_tmp t_value = #qt_value_diff t_value run scoreboard players set #qt_value_tmp t_value 0