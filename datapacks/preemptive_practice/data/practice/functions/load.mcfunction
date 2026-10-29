scoreboard objectives add const dummy
scoreboard players set #-1 const -1
scoreboard players set #10 const 10

scoreboard objectives add hotbar_index dummy
scoreboard players set @a hotbar_index 0

scoreboard objectives add placed_head minecraft.used:minecraft.player_head

scoreboard objectives add actionbar dummy
scoreboard players set @a actionbar 0

scoreboard objectives add deaths deathCount

scoreboard objectives add move_check minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sneak_check minecraft.custom:minecraft.sneak_time

#chests amount
scoreboard objectives add chests_in_front dummy
scoreboard objectives add chests_between1 dummy
scoreboard objectives add chests_between2 dummy
scoreboard objectives add chests_behind dummy
scoreboard players set @a chests_in_front 0
scoreboard players set @a chests_between1 0
scoreboard players set @a chests_between2 0
scoreboard players set @a chests_behind 0

scoreboard objectives add chest_index dummy

#spawner index
scoreboard objectives add spawner_index dummy
scoreboard players set @a spawner_index 1

#spawnegg index
scoreboard objectives add spawnegg_index dummy
scoreboard players set @a spawnegg_index 1

#rounds
scoreboard objectives add number_of_rounds dummy
scoreboard players set @a number_of_rounds 15

scoreboard objectives add current_round dummy
scoreboard players set @a current_round 0

#round result
scoreboard objectives add quiz_spawner_idx dummy
scoreboard objectives add quiz_front_idx dummy
scoreboard objectives add quiz_beh_idx dummy

scoreboard objectives add answer_correct dummy
scoreboard players set @a answer_correct 1

#bossbar

bossbar add practice:chests_front {"text":"Chests in front","color":"gold"}
bossbar add practice:mob_spawner {"text":"Silverfish Spawner","color":"aqua"}
bossbar add practice:chests_behind {"text":"Chests behind","color":"gold"}
bossbar add practice:number_of_rounds {"text":"Number of rounds","color":"gold"}
bossbar add practice:round {"text":"x/x","color":"purple"}

bossbar set practice:chests_front players @a
bossbar set practice:mob_spawner players @a
bossbar set practice:chests_behind players @a
bossbar set practice:number_of_rounds players @a
bossbar set practice:round players @a

bossbar set practice:chests_front max 8
bossbar set practice:mob_spawner max 1
bossbar set practice:chests_behind max 8
bossbar set practice:number_of_rounds max 101

bossbar set practice:mob_spawner value 1
bossbar set practice:number_of_rounds value 15

bossbar set practice:chests_front color red
bossbar set practice:mob_spawner color blue
bossbar set practice:chests_behind color red
bossbar set practice:number_of_rounds color red
bossbar set practice:round color purple

bossbar set practice:chests_front visible false
bossbar set practice:mob_spawner visible false
bossbar set practice:chests_behind visible false
bossbar set practice:number_of_rounds visible false
bossbar set practice:round visible false

#quiz spawner states
scoreboard objectives add spawner_state dummy
scoreboard players set #cave_spider spawner_state 1
scoreboard players set #spider spawner_state 1
scoreboard players set #skeleton spawner_state 1
scoreboard players set #zombie spawner_state 0
scoreboard players set #none spawner_state 1

#quiz summary
scoreboard objectives add summary_state dummy
scoreboard players set #enabled summary_state 1

scoreboard objectives add quiz_sum dummy
scoreboard objectives add quiz_guess dummy
scoreboard players set @a quiz_guess 0

scoreboard players set #100 quiz_sum 100
scoreboard players set #total quiz_sum 0
scoreboard players set #right quiz_sum 0
scoreboard players set #pct quiz_sum 0
scoreboard players set #ok quiz_sum 0

execute unless data storage practice:quiz glyphs run data modify storage practice:quiz glyphs set value ['{"text":"","color":"dark_gray"}']

#quiz round calc
scoreboard objectives add quiz_tmp dummy

#show round result
scoreboard objectives add round_result dummy
scoreboard players set #state round_result 1

#show correct answer
scoreboard objectives add corr_answer dummy
scoreboard players set #state corr_answer 1

#dungeons spawn with 2 chests
scoreboard players set #force_2_ch quiz_tmp 1

#spawn entities
scoreboard objectives add quiz_entities dummy
scoreboard players set #state quiz_entities 0



#random
scoreboard objectives add random dummy
scoreboard players set #multiplier random 25173
scoreboard players set #increment random 13849
scoreboard players set #modulus random 65536
scoreboard players set #max_limit random 1000
scoreboard players set #seed random 12345
scoreboard players set #minus_one random -1

execute unless data storage practice:quiz rounds run data modify storage practice:quiz rounds set value []
scoreboard players set @a quiz_spawner_idx 0
scoreboard players set @a quiz_front_idx 0
scoreboard players set @a quiz_beh_idx 0

schedule function practice:reset_workshop 20t


scoreboard objectives add chestlayer_state dummy
scoreboard players set #front chestlayer_state 1
scoreboard players set #between1 chestlayer_state 0
scoreboard players set #between2 chestlayer_state 0
scoreboard players set #behind chestlayer_state 1

#Tvalue
scoreboard objectives add t_value dummy
scoreboard players set #t_value t_value 70
scoreboard players set #t_value_diff t_value 0
scoreboard players set #t_value_tmp t_value 0

scoreboard players set #qt_value t_value 70
scoreboard players set #qt_value_diff t_value 0
scoreboard players set #qt_value_tmp t_value 0

function practice:drop/tval_70

scoreboard players set #t_value_fluctuate t_value 0

scoreboard players set #qt_value_fluctuate t_value 0
scoreboard players set #qt_value_randomize t_value 0


#Entities
scoreboard objectives add zombie_count dummy
scoreboard players set @a zombie_count 0
scoreboard objectives add skeleton_count dummy
scoreboard players set @a skeleton_count 0
scoreboard objectives add creeper_count dummy
scoreboard players set @a creeper_count 0
scoreboard objectives add spider_count dummy
scoreboard players set @a spider_count 0
scoreboard objectives add bat_count dummy
scoreboard players set @a bat_count 0
scoreboard objectives add enderman_count dummy
scoreboard players set @a enderman_count 0
scoreboard objectives add cave_s_count dummy
scoreboard players set @a cave_s_count 0
scoreboard objectives add minecart_count dummy
scoreboard players set @a minecart_count 0

#Scoreboard
scoreboard objectives remove workshop_sb
scoreboard objectives add workshop_sb dummy {"text":"----Configuration----","color":"green"}

team add ws_entity1
team add ws_entity2
team add ws_entity3
team add ws_entity4
team add ws_entity5
team add ws_entity6
team add ws_entity7
team add ws_entity8

team modify ws_entity1 color gray
team modify ws_entity2 color gray
team modify ws_entity3 color gray
team modify ws_entity4 color gray
team modify ws_entity5 color gray
team modify ws_entity6 color gray
team modify ws_entity7 color gray
team modify ws_entity8 color gray

team join ws_entity1 Zombies:
team join ws_entity2 Skeletons:
team join ws_entity3 Creepers:
team join ws_entity4 Spiders:
team join ws_entity5 Bats:
team join ws_entity6 Endermen:
team join ws_entity7 piders:
team modify ws_entity7 prefix {"text":"Cave S","color":"gray"}
team join ws_entity8 Minecarts:
team modify ws_entity8 prefix {"text":"Chest ","color":"gray"}


team add ws_spawner1
team add ws_spawner2
team add ws_spawner3

team add ws_front
team add ws_chest1
team add ws_chest2
team add ws_behind

team modify ws_spawner1 color aqua
team modify ws_spawner2 color aqua
team modify ws_spawner3 color aqua

team modify ws_front color gold
team modify ws_chest1 color gold
team modify ws_chest2 color gold
team modify ws_behind color gold

team modify ws_spawner1 suffix {"text":"ner","color":"aqua"}
team join ws_spawner1 Spaw
team modify ws_spawner2 suffix {"text":"er","color":"aqua"}
team join ws_spawner2 Spawn
team modify ws_spawner3 suffix {"text":"r","color":"aqua"}
team join ws_spawner3 Spawne

team modify ws_front prefix {"text":"Chests in ","color":"gold"}
team join ws_front front:
team modify ws_chest1 prefix {"text":"Chests between #","color":"gold"}
team join ws_chest1 1:
team modify ws_chest2 prefix {"text":"Chests between #","color":"gold"}
team join ws_chest2 2:
team modify ws_behind prefix {"text":"Chests ","color":"gold"}
team join ws_behind behind:

scoreboard players set Spaw workshop_sb 6
#scoreboard players set Spawn workshop_sb 4
#scoreboard players set Spawne workshop_sb 2

scoreboard objectives add spawners_state dummy
scoreboard players set #spawner1 spawners_state 0   
scoreboard players set #spawner2 spawners_state 5
scoreboard players set #spawner3 spawners_state 5

setblock -917 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
setblock -917 34 1976 minecraft:air destroy
setblock -917 34 1981 minecraft:air destroy

scoreboard players set front: workshop_sb 7
scoreboard players set behind: workshop_sb 1

#overlapping spikes (quiz)
scoreboard objectives add quiz_cfg dummy
execute unless score #spikes quiz_cfg matches 1.. run scoreboard players set #spikes quiz_cfg 1
scoreboard objectives add quiz_real dummy
scoreboard objectives add quiz_sp2_idx dummy
scoreboard objectives add quiz_sp3_idx dummy
scoreboard objectives add quiz_b1_idx dummy
scoreboard objectives add quiz_b2_idx dummy
scoreboard players set @a quiz_real 0
scoreboard players set @a quiz_sp2_idx 5
scoreboard players set @a quiz_sp3_idx 5
scoreboard players set @a quiz_b1_idx 0
scoreboard players set @a quiz_b2_idx 0

bossbar add practice:overlap {"text":"Maximum amount of spawners","color":"dark_aqua"}
bossbar set practice:overlap players @a
bossbar set practice:overlap max 3
bossbar set practice:overlap color blue
bossbar set practice:overlap visible false

function practice:updatebossbar