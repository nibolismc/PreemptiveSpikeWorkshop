function practice:sc/clear_blocks
function practice:sc/sb_clear
scoreboard objectives setdisplay sidebar

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
particle minecraft:dust 1 0 1 1 ~ ~ ~1 0.5 0.5 0.5 0 30 force @a

# loading hotbar (like at the end of the quiz), then back to the spreadsheet menu
scoreboard players set @a actionbar 0
scoreboard players set @a hotbar_index 99
schedule function practice:sc/hotbar_flash_end 15t
