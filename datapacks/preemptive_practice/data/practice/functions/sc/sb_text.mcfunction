# team texts: chest lines are gold when there is at least one chest (gray at 0), spawner lines carry the type
execute if score #front sc_cfg matches 0 run team modify sc_front color gray
execute if score #front sc_cfg matches 0 run team modify sc_front prefix {"text":"Chests in fr","color":"gray"}
execute if score #front sc_cfg matches 1.. run team modify sc_front color gold
execute if score #front sc_cfg matches 1.. run team modify sc_front prefix {"text":"Chests in fr","color":"gold"}
execute if score #front sc_cfg matches 0 run team modify sc_front suffix {"text":" 0","color":"white"}
execute if score #front sc_cfg matches 1 run team modify sc_front suffix {"text":" 1","color":"white"}
execute if score #front sc_cfg matches 2 run team modify sc_front suffix {"text":" 2","color":"white"}
execute if score #front sc_cfg matches 3 run team modify sc_front suffix {"text":" 3","color":"white"}
execute if score #front sc_cfg matches 4 run team modify sc_front suffix {"text":" 4","color":"white"}
execute if score #front sc_cfg matches 5 run team modify sc_front suffix {"text":" 5","color":"white"}
execute if score #front sc_cfg matches 6 run team modify sc_front suffix {"text":" 6","color":"white"}
execute if score #front sc_cfg matches 7 run team modify sc_front suffix {"text":" 7","color":"white"}
execute if score #front sc_cfg matches 8 run team modify sc_front suffix {"text":" 8","color":"white"}
execute if score #b1 sc_cfg matches 0 run team modify sc_b1 color gray
execute if score #b1 sc_cfg matches 0 run team modify sc_b1 prefix {"text":"Chests betwe","color":"gray"}
execute if score #b1 sc_cfg matches 1.. run team modify sc_b1 color gold
execute if score #b1 sc_cfg matches 1.. run team modify sc_b1 prefix {"text":"Chests betwe","color":"gold"}
execute if score #b1 sc_cfg matches 0 run team modify sc_b1 suffix {"text":" 0","color":"white"}
execute if score #b1 sc_cfg matches 1 run team modify sc_b1 suffix {"text":" 1","color":"white"}
execute if score #b1 sc_cfg matches 2 run team modify sc_b1 suffix {"text":" 2","color":"white"}
execute if score #b1 sc_cfg matches 3 run team modify sc_b1 suffix {"text":" 3","color":"white"}
execute if score #b1 sc_cfg matches 4 run team modify sc_b1 suffix {"text":" 4","color":"white"}
execute if score #b1 sc_cfg matches 5 run team modify sc_b1 suffix {"text":" 5","color":"white"}
execute if score #b1 sc_cfg matches 6 run team modify sc_b1 suffix {"text":" 6","color":"white"}
execute if score #b1 sc_cfg matches 7 run team modify sc_b1 suffix {"text":" 7","color":"white"}
execute if score #b1 sc_cfg matches 8 run team modify sc_b1 suffix {"text":" 8","color":"white"}
execute if score #behind sc_cfg matches 0 run team modify sc_behind color gray
execute if score #behind sc_cfg matches 0 run team modify sc_behind prefix {"text":"Chests b","color":"gray"}
execute if score #behind sc_cfg matches 1.. run team modify sc_behind color gold
execute if score #behind sc_cfg matches 1.. run team modify sc_behind prefix {"text":"Chests b","color":"gold"}
execute if score #behind sc_cfg matches 0 run team modify sc_behind suffix {"text":" 0","color":"white"}
execute if score #behind sc_cfg matches 1 run team modify sc_behind suffix {"text":" 1","color":"white"}
execute if score #behind sc_cfg matches 2 run team modify sc_behind suffix {"text":" 2","color":"white"}
execute if score #behind sc_cfg matches 3 run team modify sc_behind suffix {"text":" 3","color":"white"}
execute if score #behind sc_cfg matches 4 run team modify sc_behind suffix {"text":" 4","color":"white"}
execute if score #behind sc_cfg matches 5 run team modify sc_behind suffix {"text":" 5","color":"white"}
execute if score #behind sc_cfg matches 6 run team modify sc_behind suffix {"text":" 6","color":"white"}
execute if score #behind sc_cfg matches 7 run team modify sc_behind suffix {"text":" 7","color":"white"}
execute if score #behind sc_cfg matches 8 run team modify sc_behind suffix {"text":" 8","color":"white"}
execute if score #sp1 sc_cfg matches 0 run team modify sc_sp1 color aqua
execute if score #sp1 sc_cfg matches 0 run team modify sc_sp1 prefix {"text":"Silverfish S","color":"aqua"}
execute if score #sp1 sc_cfg matches 1 run team modify sc_sp1 color light_purple
execute if score #sp1 sc_cfg matches 1 run team modify sc_sp1 prefix {"text":"Cave Spider S","color":"light_purple"}
execute if score #sp1 sc_cfg matches 2 run team modify sc_sp1 color dark_purple
execute if score #sp1 sc_cfg matches 2 run team modify sc_sp1 prefix {"text":"Spider S","color":"dark_purple"}
execute if score #sp1 sc_cfg matches 3 run team modify sc_sp1 color dark_purple
execute if score #sp1 sc_cfg matches 3 run team modify sc_sp1 prefix {"text":"Skeleton S","color":"dark_purple"}
execute if score #sp1 sc_cfg matches 4 run team modify sc_sp1 color dark_purple
execute if score #sp1 sc_cfg matches 4 run team modify sc_sp1 prefix {"text":"Zombie S","color":"dark_purple"}
execute if score #sp2 sc_cfg matches 0 run team modify sc_sp2 color aqua
execute if score #sp2 sc_cfg matches 0 run team modify sc_sp2 prefix {"text":"Silverfish Sp","color":"aqua"}
execute if score #sp2 sc_cfg matches 1 run team modify sc_sp2 color light_purple
execute if score #sp2 sc_cfg matches 1 run team modify sc_sp2 prefix {"text":"Cave Spider Sp","color":"light_purple"}
execute if score #sp2 sc_cfg matches 2 run team modify sc_sp2 color dark_purple
execute if score #sp2 sc_cfg matches 2 run team modify sc_sp2 prefix {"text":"Spider Sp","color":"dark_purple"}
execute if score #sp2 sc_cfg matches 3 run team modify sc_sp2 color dark_purple
execute if score #sp2 sc_cfg matches 3 run team modify sc_sp2 prefix {"text":"Skeleton Sp","color":"dark_purple"}
execute if score #sp2 sc_cfg matches 4 run team modify sc_sp2 color dark_purple
execute if score #sp2 sc_cfg matches 4 run team modify sc_sp2 prefix {"text":"Zombie Sp","color":"dark_purple"}
