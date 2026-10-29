playsound minecraft:ui.button.click player @a ~ ~ ~ 1

execute if score @p hotbar_index matches 0 run function practice:ws_remove_all_cows
execute if score @p hotbar_index matches 0 run function practice:q_remove_all_cows

execute if score @p hotbar_index matches 15 run function practice:ws_remove_all_cows
execute if score @p hotbar_index matches 9 run function practice:q_remove_all_cows
execute if score @p hotbar_index matches 17 run function practice:q_remove_all_cows


execute if score @p hotbar_index matches 15 run scoreboard players set #t_value_diff t_value 99
execute if score @p hotbar_index matches 15 run function practice:ws_update_tvalue

execute if score @p hotbar_index matches 9 run scoreboard players set #qt_value_diff t_value 99
execute if score @p hotbar_index matches 9 run function practice:q_update_tvalue
execute if score @p hotbar_index matches 17 run scoreboard players set #qt_value_diff t_value 99
execute if score @p hotbar_index matches 17 run function practice:q_update_tvalue