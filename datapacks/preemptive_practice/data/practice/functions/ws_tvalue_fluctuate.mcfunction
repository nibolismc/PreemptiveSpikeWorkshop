function practice:get_random

execute if score #result random matches 0..49 run scoreboard players set #t_value_diff t_value -1
execute if score #result random matches 50..99 run scoreboard players set #t_value_diff t_value 1
execute if score #result random matches 100..999 run scoreboard players set #t_value_diff t_value 0

execute as @a[scores={move_check=0}] run function practice:ws_update_tvalue

execute if score #result random matches 0..149 run scoreboard players set #t_value_diff t_value -1
execute if score #result random matches 150..299 run scoreboard players set #t_value_diff t_value 1
execute if score #result random matches 300..999 run scoreboard players set #t_value_diff t_value 0

execute as @a[scores={move_check=1..}] run function practice:ws_update_tvalue