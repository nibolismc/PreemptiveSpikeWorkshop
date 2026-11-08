scoreboard players operation #sct_value t_value += #sct_value_diff t_value
execute if score #sct_value t_value matches ..0 run scoreboard players set #sct_value t_value 1

scoreboard players set #sct_value_tmp t_value 0

execute if score #sct_value_diff t_value matches 1.. run function practice:sc_spawn_cows_loop
execute if score #sct_value_diff t_value matches ..-1 run function practice:sc_remove_cows_loop