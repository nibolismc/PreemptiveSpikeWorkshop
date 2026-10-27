function practice:get_random

execute if score #result random matches 0..659 run scoreboard players set #roll quiz_tmp 0
execute if score #result random matches 660..869 run scoreboard players set #roll quiz_tmp 1
execute if score #result random matches 870..939 run scoreboard players set #roll quiz_tmp 2
execute if score #result random matches 940..969 run scoreboard players set #roll quiz_tmp 3
execute if score #result random matches 970..989 run scoreboard players set #roll quiz_tmp 4
execute if score #result random matches 990..994 run scoreboard players set #roll quiz_tmp 5
execute if score #result random matches 995..996 run scoreboard players set #roll quiz_tmp 6
execute if score #result random matches 997..998 run scoreboard players set #roll quiz_tmp 7
execute if score #result random matches 999 run scoreboard players set #roll quiz_tmp 8
