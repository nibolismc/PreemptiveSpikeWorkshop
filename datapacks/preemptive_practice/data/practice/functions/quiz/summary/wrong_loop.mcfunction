execute store result score #okw quiz_sum run data get storage practice:quiz tmp[0].ok
execute if score #okw quiz_sum matches 0 run data modify storage practice:quiz wrongq append from storage practice:quiz tmp[0]
data remove storage practice:quiz tmp[0]
execute if data storage practice:quiz tmp[0] run function practice:quiz/summary/wrong_loop