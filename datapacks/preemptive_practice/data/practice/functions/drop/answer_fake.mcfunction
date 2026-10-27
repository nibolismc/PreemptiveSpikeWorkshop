execute if score @p quiz_real matches 1 run scoreboard players set @a answer_correct 0
execute unless score @p quiz_real matches 1 run scoreboard players set @a answer_correct 1

#Show round results
execute as @a[scores={answer_correct=0}] if score #state round_result matches 1 run tellraw @s {"text":"Wrong!","color":"red"}
execute as @a[scores={answer_correct=0}] if score #state round_result matches 1 run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1.5 1
execute as @a[scores={answer_correct=1}] if score #state round_result matches 1 run tellraw @s {"text":"Correct!","color":"green"}
execute as @a[scores={answer_correct=1}] if score #state round_result matches 1 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.5 2

#alt sound
execute as @a if score #state round_result matches 0 run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 0.8

#Show correct answers
function practice:quiz/show_answer

scoreboard players set @a quiz_guess 0
function practice:quiz/record_round

execute as @a[scores={number_of_rounds=101}] run function practice:quiz/quiz_new_round
execute as @a[scores={number_of_rounds=..100}] if score @s current_round = @s number_of_rounds run function practice:drop/quiz_quit
execute as @a[scores={number_of_rounds=..100}] unless score @s current_round = @s number_of_rounds run function practice:quiz/quiz_new_round