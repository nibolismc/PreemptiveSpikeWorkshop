playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1.5

scoreboard players set @a hotbar_index 9

scoreboard players set @a current_round 0

bossbar set practice:number_of_rounds visible false
bossbar set practice:round visible true

scoreboard players set #total quiz_sum 0
scoreboard players set #right quiz_sum 0
data modify storage practice:quiz rounds set value []
data modify storage practice:quiz glyphs set value ['{"text":"","color":"dark_gray"}']


function practice:quiz/quiz_new_round