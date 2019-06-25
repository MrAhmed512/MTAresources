-- created by l0nger 

local outlineForPlayers={}
local DEFAULT_DRAW_DISTANCE = 50
local DEFAULT_COLOR = {183, 110, 121,255}
local DEFAULT_SPECULAR_POWER = 1

function createOutlineForPlayer(player)
  if outlineForPlayers[player] then return false end
  outlineForPlayers[player]={}

  outlineForPlayers[player].shader=dxCreateShader("fx/outline.fx", 1, DEFAULT_DRAW_DISTANCE, true, "ped")
  if not outlineForPlayers[player].shader then
    -- we cant make shader, problem with memory?
    return false
  end

  dxSetShaderValue(outlineForPlayers[player].shader, "sColorizePed", {DEFAULT_COLOR[1]/255, DEFAULT_COLOR[2]/255, DEFAULT_COLOR[3]/255, DEFAULT_COLOR[4]/255})
  dxSetShaderValue(outlineForPlayers[player].shader, "sSpecularPower", DEFAULT_SPECULAR_POWER)

  engineApplyShaderToWorldTexture(outlineForPlayers[player].shader, "*", player)
  engineRemoveShaderFromWorldTexture(outlineForPlayers[player].shader, "muzzle_texture*", player)

  if getElementAlpha(player)==255 then
    setElementAlpha(player, 254)
  end
  return true
end

function removeOutlineFromPlayer(player)
  if not outlineForPlayers[player] then return false end
  if not isElement(outlineForPlayers[player].shader) then return false end

  engineRemoveShaderFromWorldTexture(outlineForPlayers[player].shader, "*", player)
  destroyElement(outlineForPlayers[player].shader)
  outlineForPlayers[player] = nil
  return true
end
fileDelete("outlineShader.lua")