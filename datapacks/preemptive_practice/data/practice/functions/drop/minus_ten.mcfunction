playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 2


execute as @a[scores={hotbar_index=6,number_of_rounds=..10}] run scoreboard players set @a number_of_rounds 1
execute as @a[scores={hotbar_index=6,number_of_rounds=11..100}] run scoreboard players remove @a number_of_rounds 10

execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run scoreboard players set @a number_of_rounds 100


function practice:updatebossbar