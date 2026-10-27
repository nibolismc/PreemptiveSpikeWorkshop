scoreboard players add #t_value_tmp t_value 1
summon cow -916.5 49.00 1912.5 {Invulnerable:1b,NoGravity:1b,Silent:1b}

execute if score #t_value_tmp t_value < #t_value_diff t_value run function practice:ws_spawn_cows_loop
execute if score #t_value_tmp t_value = #t_value_diff t_value run scoreboard players set #t_value_tmp t_value 0