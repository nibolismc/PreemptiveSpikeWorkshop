playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 2


execute as @a[scores={hotbar_index=6,number_of_rounds=..10}] run scoreboard players set @a number_of_rounds 1
execute as @a[scores={hotbar_index=6,number_of_rounds=11..100}] run scoreboard players remove @a number_of_rounds 10

execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run scoreboard players set @a number_of_rounds 100

execute as @a[scores={hotbar_index=15}] run scoreboard players set #t_value_diff t_value -10
execute as @a[scores={hotbar_index=15}] run function practice:ws_update_tvalue

execute as @a[scores={hotbar_index=17}] run scoreboard players set #qt_value_diff t_value -10
execute as @a[scores={hotbar_index=17}] run function practice:q_update_tvalue

function practice:updatebossbar