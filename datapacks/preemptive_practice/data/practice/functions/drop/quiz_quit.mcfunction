function practice:quiz/reset_round

playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
particle minecraft:dust 1 0 1 1 ~ ~ ~1 0.5 0.5 0.5 0 30 force @a

bossbar set practice:number_of_rounds visible true
bossbar set practice:round visible false
bossbar set practice:round value 1

scoreboard players set @a hotbar_index 99
replaceitem entity @a hotbar.0 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.1 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.2 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.3 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.4 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.5 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.6 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.7 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}
replaceitem entity @a hotbar.8 minecraft:magenta_stained_glass_pane{display:{Name:'{"text":""}'}}

schedule function practice:quiz/hotbar_flash_end 15t