scoreboard players add #qt_value_tmp t_value 1
summon cow -404.5 49.00 1912.5 {Invulnerable:1b,NoGravity:1b,Silent:1b}

execute if score #qt_value_tmp t_value < #qt_value_diff t_value run function practice:q_spawn_cows_loop
execute if score #qt_value_tmp t_value = #qt_value_diff t_value run scoreboard players set #qt_value_tmp t_value 0