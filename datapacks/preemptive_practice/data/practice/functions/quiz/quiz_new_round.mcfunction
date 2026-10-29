function practice:quiz/reset_round

scoreboard players add @a current_round 1

function practice:updatebossbar

scoreboard players set @a answer_correct 1

scoreboard players set #result random 0
scoreboard players set @a quiz_front 0
scoreboard players set @a quiz_behind 0

scoreboard players set @a quiz_b1_idx 0
scoreboard players set @a quiz_b2_idx 0
scoreboard players set @a quiz_sp2_idx 5
scoreboard players set @a quiz_sp3_idx 5

execute if score #spikes quiz_cfg matches ..1 run function practice:quiz/gen_single
execute if score #spikes quiz_cfg matches 2.. run function practice:quiz/gen_multi

kill @e[type=minecraft:experience_orb]
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]

execute if score #qt_value_randomize t_value matches 1 run function practice:quiz/randomize_t

execute if score #state quiz_entities matches 1 run function practice:quiz/randomly_spawn_entities