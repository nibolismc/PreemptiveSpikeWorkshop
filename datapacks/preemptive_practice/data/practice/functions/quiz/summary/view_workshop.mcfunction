playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1

execute if score @p hotbar_index matches 4..9 unless data storage practice:quiz wrongq[0] run tellraw @a {"text":"[Back to Quiz]\n","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function practice:start_spikequiz"},"hoverEvent":{"action":"show_text","contents":{"text":"go back","color":"gray"}}}

function practice:start_spikecheck

scoreboard players set @a hotbar_index 99

schedule function practice:quiz/summary/view_workshop_blocks 5t