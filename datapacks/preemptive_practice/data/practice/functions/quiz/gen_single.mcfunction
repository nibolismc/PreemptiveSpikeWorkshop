# 1 spike: unchanged behaviour (front + behind chests, one spawner at z 1980)
function practice:quiz/chests_front

function practice:quiz/chests_behind

function practice:quiz/choose_spawner
execute as @a[scores={quiz_spawner_idx=2..4}] if score #force_2_ch quiz_tmp matches 1 run function practice:quiz/force_2_ch

scoreboard players set @a quiz_real 0
execute if score @p quiz_spawner_idx matches 0 run scoreboard players set @a quiz_real 1
