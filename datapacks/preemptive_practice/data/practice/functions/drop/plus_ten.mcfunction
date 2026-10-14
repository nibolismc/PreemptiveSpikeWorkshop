playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.6


execute as @a[scores={hotbar_index=6,number_of_rounds=100}] run scoreboard players set @a number_of_rounds 101

execute as @a[scores={hotbar_index=6,number_of_rounds=90..99}] run scoreboard players set @a number_of_rounds 100
execute as @a[scores={hotbar_index=6,number_of_rounds=..89}] run scoreboard players add @a number_of_rounds 10


function practice:updatebossbar