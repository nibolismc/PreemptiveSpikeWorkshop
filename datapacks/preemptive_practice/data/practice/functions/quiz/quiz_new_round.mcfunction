function practice:quiz/reset_round

scoreboard players add @a current_round 1

scoreboard players set @a answer_correct 1

scoreboard players set #result random 0
scoreboard players set @a quiz_front 0
scoreboard players set @a quiz_behind 0

function practice:quiz/chests_front

function practice:quiz/chests_behind

function practice:quiz/choose_spawner

kill @e[type=minecraft:experience_orb]
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]