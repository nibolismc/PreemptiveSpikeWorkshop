fill -793 34 1968 -786 34 1968 minecraft:air
fill -793 34 1983 -786 34 1983 minecraft:air
scoreboard players set @a chests_in_front 0
scoreboard players set @a chests_behind 0

scoreboard players set @a hotbar_index 3

scoreboard players set @a chest_index 0
scoreboard players operation #lf quiz_sum = #vfront quiz_sum
execute if score #lf quiz_sum matches 1.. run function practice:quiz/summary/view_front_loop

scoreboard players set @a chest_index 1
scoreboard players operation #lb quiz_sum = #vbeh quiz_sum
execute if score #lb quiz_sum matches 1.. run function practice:quiz/summary/view_behind_loop

execute if score #vsp quiz_sum matches 0 run function practice:drop/silverfish
execute if score #vsp quiz_sum matches 1 run function practice:drop/cave_spider
execute if score #vsp quiz_sum matches 2 run function practice:drop/spider
execute if score #vsp quiz_sum matches 3 run function practice:drop/skeleton
execute if score #vsp quiz_sum matches 4 run function practice:drop/zombie
execute if score #vsp quiz_sum matches 5 run function practice:drop/none

scoreboard players set @a hotbar_index 1
scoreboard players set @a chest_index 0
function practice:updatebossbar

execute if score @p hotbar_index matches 1..3 unless data storage practice:quiz wrongq[0] run tellraw @a {"text":"[Back to Quiz]\n","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/function practice:start_spikequiz"},"hoverEvent":{"action":"show_text","contents":{"text":"go back","color":"gray"}}}