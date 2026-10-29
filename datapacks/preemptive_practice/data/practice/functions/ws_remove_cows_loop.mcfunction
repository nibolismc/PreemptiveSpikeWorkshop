scoreboard players remove #t_value_tmp t_value 1
execute positioned -916.5 49.00 1912.5 run tp @e[type=cow, distance=..1,limit=1] 9 9 9
execute positioned 9 9 9 run kill @e[type=cow, distance=..1,limit=1]

execute if score #t_value_tmp t_value > #t_value_diff t_value run function practice:ws_remove_cows_loop
execute if score #t_value_tmp t_value = #t_value_diff t_value run scoreboard players set #t_value_tmp t_value 0