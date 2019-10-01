--[[
  Reaper Script to accept absolute midi messages and move the edit position to the 
  percentage of the project length as represented by the midi value. 

  I'm doing this to make the the touchbar on my Alphatrack Frontier work as a jogbar in 
  conjunction with the CSI project https://forums.cockos.com/showthread.php?t=183143

  Author : Malcolm Groves
  Repo : github.com/malcolmgroves/reaper_scripts
]]
function Main()
    is_new_value, filename, sectionID, cmdID, mode, resolution, val = reaper.get_action_context()
    if is_new_value then
        DebugMsg("cmdID = " .. cmdID)
        DebugMsg("mode = " .. mode)
        DebugMsg("resolution = " .. resolution)
        DebugMsg("val = " .. val)
    end
end

function DebugMsg(msg)
    reaper.ShowConsoleMsg("MalGMIDILog : " .. msg .. "\n")
end

Main()
