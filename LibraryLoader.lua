-- Licensed By DV7 Team.
-- ID 0990a341ad442f230990a341ad442f23

local oldReq = require
function require(Mf)
  local succ, mod = pcall(oldReq, Mf)
  if succ then
    return mod
  else
    print("Error : " , mod)
    return {}
  end
end

LibraryLoader = { }

function LibraryLoader.loadLibrary(lib)
  lib = lib:gsub("%.so", "")
  if lib then
   local M = require(lib)
   return M
  else
    print("unable to form lib..")
  end
end

return LibraryLoader
