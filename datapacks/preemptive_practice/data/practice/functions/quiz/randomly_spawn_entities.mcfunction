function practice:get_random
execute if score #result random matches 0..200 run summon minecraft:creeper -403.5 39 1960.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}

function practice:get_random
execute if score #result random matches 0..200 run summon minecraft:creeper -405.5 39 1960.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}

function practice:get_random
execute if score #result random matches 0..500 run execute at @p run summon minecraft:creeper ^ ^ ^20 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}

scoreboard players set #qt_value_diff t_value 0 
execute positioned 402.5 39 1960.00 run execute as @e[type=minecraft:creeper,distance=..100] run scoreboard players remove #qt_value_diff t_value 1
function practice:q_update_tvalue