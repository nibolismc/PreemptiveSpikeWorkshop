scoreboard players operation #t_value t_value += #t_value_diff t_value
execute if score #t_value t_value matches ..0 run scoreboard players set #t_value t_value 1

scoreboard players set #t_value_tmp t_value 0

execute if score #t_value_diff t_value matches 1.. run function practice:ws_spawn_cows_loop
execute if score #t_value_diff t_value matches ..-1 run function practice:ws_remove_cows_loop