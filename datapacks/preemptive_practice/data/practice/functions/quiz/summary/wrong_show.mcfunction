playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1

tellraw @a {"text":"","color":"red","bold":true}
data modify storage practice:quiz wrongq set value []
data modify storage practice:quiz tmp set from storage practice:quiz rounds
execute if data storage practice:quiz tmp[0] run function practice:quiz/summary/wrong_loop
data remove storage practice:quiz tmp
execute if data storage practice:quiz wrongq[0] run function practice:quiz/summary/wrong_next