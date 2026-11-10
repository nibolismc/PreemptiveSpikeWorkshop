tp @a -1427.50 42.00 1936.50 360 0
playsound minecraft:ui.toast.in player @a -1427.50 42.00 1936.50 10
scoreboard players set @a hotbar_index 19
gamemode survival @a

#bossbar
bossbar set practice:chests_front players @a
bossbar set practice:mob_spawner players @a
bossbar set practice:chests_behind players @a

bossbar set practice:chests_front visible false
bossbar set practice:mob_spawner visible false
bossbar set practice:chests_behind visible false
bossbar set practice:number_of_rounds visible false
bossbar set practice:round visible false
bossbar set practice:overlap visible false

scoreboard objectives setdisplay sidebar

# clean start: remove everything a previous run left in the spreadsheet section
function practice:sc/clear_blocks
function practice:sc/sb_clear

function practice:updatebossbar

gamemode survival @a