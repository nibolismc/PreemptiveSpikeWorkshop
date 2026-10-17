playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1

function practice:start_spikecheck


scoreboard players set @a hotbar_index 99

schedule function practice:quiz/summary/view_workshop_blocks 5t