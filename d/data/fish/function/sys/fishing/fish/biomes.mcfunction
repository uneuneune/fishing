execute if biome ~ ~ ~ nether_wastes run loot replace entity @s weapon loot fish:lake_fish

data modify storage fish: fish set from entity @s SelectedItem

tag @s add fishedfish