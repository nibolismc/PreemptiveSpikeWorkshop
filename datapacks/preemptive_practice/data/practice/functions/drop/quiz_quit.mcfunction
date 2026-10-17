function practice:quiz/reset_round

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
particle minecraft:dust 1 0 1 1 ~ ~ ~1 0.5 0.5 0.5 0 30 force @a

bossbar set practice:number_of_rounds visible true
bossbar set practice:round visible false
bossbar set practice:round value 1

scoreboard players set @a hotbar_index 99

schedule function practice:quiz/hotbar_flash_end 15t