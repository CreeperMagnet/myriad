# Set modified player compendium data

# Transfer temp player data to global player data
execute unless data storage myriad:temp root.compendium.uuid run data modify storage myriad:temp root.compendium.uuid set from storage myriad:temp root.manage_data.uuid
$data modify storage myriad:compendium player_data[{uuid:$(uuid)}] set from storage myriad:temp root.compendium
