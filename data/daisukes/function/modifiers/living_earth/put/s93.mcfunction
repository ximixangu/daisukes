# chiseled_bookshelf
$execute if block ~ ~ ~ $(Name)[facing=$(facing),slot_0_occupied=$(slot_0_occupied),slot_1_occupied=$(slot_1_occupied),slot_2_occupied=$(slot_2_occupied),slot_3_occupied=$(slot_3_occupied),slot_4_occupied=$(slot_4_occupied),slot_5_occupied=$(slot_5_occupied)] run return 0
$setblock ~ ~ ~ $(Name)[facing=$(facing),slot_0_occupied=$(slot_0_occupied),slot_1_occupied=$(slot_1_occupied),slot_2_occupied=$(slot_2_occupied),slot_3_occupied=$(slot_3_occupied),slot_4_occupied=$(slot_4_occupied),slot_5_occupied=$(slot_5_occupied)] strict
return 1
