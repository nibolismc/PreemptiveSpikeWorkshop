scoreboard objectives add hotbar_index dummy
scoreboard players set @a hotbar_index 4

scoreboard objectives add placed_head minecraft.used:minecraft.player_head

scoreboard objectives add actionbar dummy
scoreboard players set @a actionbar 0

scoreboard objectives add deaths deathCount

#chests amount
scoreboard objectives add chests_in_front dummy
scoreboard objectives add chests_behind dummy
scoreboard players set @a chests_in_front 0
scoreboard players set @a chests_behind 0

scoreboard objectives add chest_index dummy

#rounds
scoreboard objectives add number_of_rounds dummy
scoreboard players set @a number_of_rounds 10

scoreboard objectives add current_round dummy
scoreboard players set current_round 0

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
bossbar set practice:number_of_rounds value 10

bossbar set practice:chests_front color red
bossbar set practice:mob_spawner color blue
bossbar set practice:chests_behind color red
bossbar set practice:number_of_rounds color red
bossbar set practice:round color purple

function practice:updatebossbar

#quiz spawner states
scoreboard objectives add spawner_state dummy
scoreboard players set #cave_spider spawner_state 1
scoreboard players set #spider spawner_state 1
scoreboard players set #skeleton spawner_state 1
scoreboard players set #zombie spawner_state 0
scoreboard players set #none spawner_state 1

#quiz summary states
scoreboard objectives add summary_state dummy
scoreboard players set #enabled summary_state 1

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

#random
scoreboard objectives add random dummy
scoreboard players set #multiplier random 25173
scoreboard players set #increment random 13849
scoreboard players set #modulus random 65536
scoreboard players set #max_limit random 1000
scoreboard players set #seed random 12345
scoreboard players set #minus_one random -1
