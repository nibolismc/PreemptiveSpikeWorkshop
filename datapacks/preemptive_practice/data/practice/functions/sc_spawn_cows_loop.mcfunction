scoreboard players add #sct_value_tmp t_value 1
summon cow -1428.5 49.00 1912.5 {Invulnerable:1b,NoGravity:1b,Silent:1b}

execute if score #sct_value_tmp t_value < #sct_value_diff t_value run function practice:sc_spawn_cows_loop
execute if score #sct_value_tmp t_value = #sct_value_diff t_value run scoreboard players set #sct_value_tmp t_value 0