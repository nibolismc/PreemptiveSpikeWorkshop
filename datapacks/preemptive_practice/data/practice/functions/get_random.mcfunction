scoreboard players operation #seed random *= #multiplier random
scoreboard players operation #seed random += #increment random
scoreboard players operation #seed random %= #modulus random

execute if score #seed random matches ..-1 run scoreboard players operation #seed random *= #minus_one random

scoreboard players operation #result random = #seed random
scoreboard players operation #result random %= #max_limit random

execute if score #result random matches ..-1 run scoreboard players operation #result random *= #minus_one random
