# run once (appended to init.mcfunction, or run it by hand: /function practice:sc/init)
scoreboard objectives add sc_cfg dummy
scoreboard objectives add sc_sb dummy {"text":"----Configuration----","color":"green"}

scoreboard players set #step sc_cfg 1
scoreboard players set #total sc_cfg 1
scoreboard players set #layout sc_cfg 1
scoreboard players set #sp1 sc_cfg 5
scoreboard players set #sp2 sc_cfg 5
scoreboard players set #front sc_cfg 0
scoreboard players set #b1 sc_cfg 0
scoreboard players set #behind sc_cfg 0

# entry names are split differently than in the workshop sidebar, so both sidebars never share a name
team add sc_front
team add sc_b1
team add sc_behind
team add sc_sp1
team add sc_sp2
team leave #1:
team join sc_front ont:
team join sc_b1 en:
team join sc_behind ehind:
team join sc_sp1 pawner
team join sc_sp2 awner
team modify sc_front prefix {"text":"Chests in fr","color":"gray"}
team modify sc_b1 prefix {"text":"Chests betwe","color":"gray"}
team modify sc_behind prefix {"text":"Chests b","color":"gray"}
team modify sc_front color gray
team modify sc_b1 color gray
team modify sc_behind color gray
