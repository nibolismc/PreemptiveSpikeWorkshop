playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1

execute unless data storage practice:quiz wrongq[0] run tellraw @a {"text":"No more wrong guesses.","color":"gray"}
execute if data storage practice:quiz wrongq[0] run data modify storage practice:quiz tmp set from storage practice:quiz wrongq
execute if data storage practice:quiz wrongq[0] run function practice:quiz/summary/wrong_print
data remove storage practice:quiz tmp
data remove storage practice:quiz wrongq[0]
execute if data storage practice:quiz wrongq[0] run tellraw @a {"text":"[>]\n","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function practice:quiz/summary/wrong_next"},"hoverEvent":{"action":"show_text","contents":{"text":"Next","color":"gray"}}}
execute if score @p hotbar_index matches 1..3 unless data storage practice:quiz wrongq[0] run tellraw @a {"text":"[Back to Quiz]\n","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function practice:start_spikequiz"},"hoverEvent":{"action":"show_text","contents":{"text":"go back","color":"gray"}}}