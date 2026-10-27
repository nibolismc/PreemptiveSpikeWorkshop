tp @a -403.50 42.00 1936.50 360 0
playsound minecraft:ui.toast.in player @a -403.50 42.00 1936.50 10
scoreboard players set @a hotbar_index 4

function practice:quiz/reset_round

scoreboard players set @a chest_index 0

gamemode survival @a

#bossbar
bossbar set practice:number_of_rounds players @a
bossbar set practice:round players @a

bossbar set practice:chests_front visible false
bossbar set practice:mob_spawner visible false
bossbar set practice:chests_behind visible false
bossbar set practice:number_of_rounds visible true
bossbar set practice:round visible false
bossbar set practice:overlap players @a
bossbar set practice:overlap visible true

scoreboard objectives setdisplay sidebar

function practice:updatebossbar