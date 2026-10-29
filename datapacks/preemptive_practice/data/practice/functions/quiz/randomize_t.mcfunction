function practice:get_random

function practice:drop/tval_30

scoreboard players operation #temp t_value = #result random
scoreboard players operation #temp t_value /= #10 const

scoreboard players operation #qt_value_diff t_value = #temp t_value
function practice:q_update_tvalue