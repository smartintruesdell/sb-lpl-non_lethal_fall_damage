--[[
  A Plugin for `player_primary.lua` which amends incoming fall damage to clamp it
  if it goes above the player's current health.

  Based on the Non-Lethal Fall Damage mod by Gay Moth Aunt
  https://steamcommunity.com/sharedfiles/filedetails/?id=1131427227
]]
require "/scripts/lpl_plugin_util.lua"

update_determine_fall_damage = Plugins.add_after_hook(
  update_determine_fall_damage,
  function (damage)
    if damage > status.resource("health") then
		  return status.resource("health") - 1
    end

    return damage
  end
)
