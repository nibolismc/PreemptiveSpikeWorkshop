function practice:get_random

execute if score #result random matches 0..299 run scoreboard players set #roll quiz_tmp 0
execute if score #result random matches 300..749 run scoreboard players set #roll quiz_tmp 1
execute if score #result random matches 750..919 run scoreboard players set #roll quiz_tmp 2
execute if score #result random matches 920..949 run scoreboard players set #roll quiz_tmp 3
execute if score #result random matches 950..974 run scoreboard players set #roll quiz_tmp 4
execute if score #result random matches 975..987 run scoreboard players set #roll quiz_tmp 5
execute if score #result random matches 988..994 run scoreboard players set #roll quiz_tmp 6
execute if score #result random matches 995..998 run scoreboard players set #roll quiz_tmp 7
execute if score #result random matches 999 run scoreboard players set #roll quiz_tmp 8
