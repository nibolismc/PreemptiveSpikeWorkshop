scoreboard players remove #sct_value_tmp t_value 1
execute positioned -1428.5 49.00 1912.5 run tp @e[type=cow, distance=..1,limit=1] 9 9 9
execute positioned 9 9 9 run kill @e[type=cow, distance=..1,limit=1]

execute if score #sct_value_tmp t_value > #sct_value_diff t_value run function practice:sc_remove_cows_loop
execute if score #sct_value_tmp t_value = #sct_value_diff t_value run scoreboard players set #sct_value_tmp t_value 0