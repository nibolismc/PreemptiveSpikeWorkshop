execute at @a run playsound minecraft:ui.loom.take_result player @a ~ ~ ~ 1

scoreboard players set #100 quiz_sum 100

tellraw @a {"text":"\n\n\n\n\nSummary:","color":"yellow","bold":false,"underlined":true}
tellraw @a {"text":""}
tellraw @a {"nbt":"glyphs[]","storage":"practice:quiz","interpret":true}

execute if score #total quiz_sum matches 1.. run scoreboard players operation #pct quiz_sum = #right quiz_sum
execute if score #total quiz_sum matches 1.. run scoreboard players operation #pct quiz_sum *= #100 quiz_sum
execute if score #total quiz_sum matches 1.. run scoreboard players operation #pct quiz_sum /= #total quiz_sum
tellraw @a [{"text":""}]
tellraw @a [{"score":{"name":"#right","objective":"quiz_sum"},"color":"green"},{"text":" / ","color":"white"},{"score":{"name":"#total","objective":"quiz_sum"},"color":"gold"}]
tellraw @a [{"score":{"name":"#pct","objective":"quiz_sum"},"color":"aqua"},{"text":"%","color":"aqua"}]

execute unless score #right quiz_sum = #total quiz_sum run tellraw @a {"text":"\n[view wrong guesses]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function practice:quiz/summary/wrong_show"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to show wrong guesses","color":"gray"}}}

execute if score #right quiz_sum = #total quiz_sum run tellraw @a {"text":"\nPerfect game!","color":"green","bold":false}