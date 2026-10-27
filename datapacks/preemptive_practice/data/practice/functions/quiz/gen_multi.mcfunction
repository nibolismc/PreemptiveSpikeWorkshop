# 2-3 overlapping spikes: workshop layout (z 1969/1971/1973/1976/1979/1981/1983, x + 512)
# max. ONE silverfish in total, real = a silverfish is among the spawners

# --- chest layers (2 spikes: front, between #1, behind | 3 spikes: + between #2)
function practice:quiz/multi/roll_front
scoreboard players operation @a quiz_front_idx = #roll quiz_tmp

function practice:quiz/multi/roll_other
scoreboard players operation @a quiz_b1_idx = #roll quiz_tmp

scoreboard players set @a quiz_b2_idx 0
execute if score #spikes quiz_cfg matches 3 run function practice:quiz/multi/roll_other
execute if score #spikes quiz_cfg matches 3 run scoreboard players operation @a quiz_b2_idx = #roll quiz_tmp

function practice:quiz/multi/roll_other
scoreboard players operation @a quiz_beh_idx = #roll quiz_tmp

# --- spawners: all slots without silverfish first
function practice:quiz/multi/draw_other
scoreboard players operation @a quiz_spawner_idx = #draw quiz_tmp
function practice:quiz/multi/draw_other
scoreboard players operation @a quiz_sp2_idx = #draw quiz_tmp
scoreboard players set @a quiz_sp3_idx 5
execute if score #spikes quiz_cfg matches 3 run function practice:quiz/multi/draw_other
execute if score #spikes quiz_cfg matches 3 run scoreboard players operation @a quiz_sp3_idx = #draw quiz_tmp

# --- 50% real: one random slot becomes the silverfish
function practice:get_random
scoreboard players set #real quiz_tmp 0
execute if score #result random matches 0..499 run scoreboard players set #real quiz_tmp 1

execute if score #real quiz_tmp matches 1 run function practice:get_random
execute if score #real quiz_tmp matches 1 run scoreboard players operation #pick quiz_tmp = #result random
execute if score #real quiz_tmp matches 1 run scoreboard players operation #pick quiz_tmp %= #spikes quiz_cfg
execute if score #real quiz_tmp matches 1 if score #pick quiz_tmp matches 0 run scoreboard players set @a quiz_spawner_idx 0
execute if score #real quiz_tmp matches 1 if score #pick quiz_tmp matches 1 run scoreboard players set @a quiz_sp2_idx 0
execute if score #real quiz_tmp matches 1 if score #pick quiz_tmp matches 2 run scoreboard players set @a quiz_sp3_idx 0

scoreboard players operation @a quiz_real = #real quiz_tmp

# --- dungeon chests: every spider/skeleton/zombie spawner adds 2 chests to random layers
scoreboard players operation #layers quiz_tmp = #spikes quiz_cfg
scoreboard players add #layers quiz_tmp 1
execute if score #force_2_ch quiz_tmp matches 1 as @a[scores={quiz_spawner_idx=2..4}] run function practice:quiz/multi/add_two
execute if score #force_2_ch quiz_tmp matches 1 as @a[scores={quiz_sp2_idx=2..4}] run function practice:quiz/multi/add_two
execute if score #force_2_ch quiz_tmp matches 1 as @a[scores={quiz_sp3_idx=2..4}] run function practice:quiz/multi/add_two

function practice:quiz/multi/place
