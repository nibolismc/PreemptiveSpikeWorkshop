playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.6


execute as @a[scores={hotbar_index=6,number_of_rounds=100}] run scoreboard players set @a number_of_rounds 101

execute as @a[scores={hotbar_index=6,number_of_rounds=90..99}] run scoreboard players set @a number_of_rounds 100
execute as @a[scores={hotbar_index=6,number_of_rounds=..89}] run scoreboard players add @a number_of_rounds 10

execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches ..240 run scoreboard players set #t_value_diff t_value 10
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 241 run scoreboard players set #t_value_diff t_value 9
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 242 run scoreboard players set #t_value_diff t_value 8
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 243 run scoreboard players set #t_value_diff t_value 7
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 244 run scoreboard players set #t_value_diff t_value 6
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 245 run scoreboard players set #t_value_diff t_value 5
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 246 run scoreboard players set #t_value_diff t_value 4
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 247 run scoreboard players set #t_value_diff t_value 3
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 248 run scoreboard players set #t_value_diff t_value 2
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 249 run scoreboard players set #t_value_diff t_value 1
execute as @a[scores={hotbar_index=15}] if score #t_value t_value matches 250.. run scoreboard players set #t_value_diff t_value 0
execute as @a[scores={hotbar_index=15}] run function practice:ws_update_tvalue

function practice:updatebossbar