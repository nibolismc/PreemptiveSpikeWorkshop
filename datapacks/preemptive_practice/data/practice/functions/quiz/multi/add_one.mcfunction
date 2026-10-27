# one extra dungeon chest in a random used layer (max 8 per layer)
function practice:get_random
scoreboard players operation #lay quiz_tmp = #result random
scoreboard players operation #lay quiz_tmp %= #layers quiz_tmp

execute if score #lay quiz_tmp matches 0 if score @p quiz_front_idx matches ..7 run scoreboard players add @a quiz_front_idx 1
execute if score #lay quiz_tmp matches 1 if score @p quiz_b1_idx matches ..7 run scoreboard players add @a quiz_b1_idx 1
execute if score #lay quiz_tmp matches 2 if score #spikes quiz_cfg matches 3 if score @p quiz_b2_idx matches ..7 run scoreboard players add @a quiz_b2_idx 1
execute if score #lay quiz_tmp matches 2 if score #spikes quiz_cfg matches 2 if score @p quiz_beh_idx matches ..7 run scoreboard players add @a quiz_beh_idx 1
execute if score #lay quiz_tmp matches 3 if score @p quiz_beh_idx matches ..7 run scoreboard players add @a quiz_beh_idx 1
