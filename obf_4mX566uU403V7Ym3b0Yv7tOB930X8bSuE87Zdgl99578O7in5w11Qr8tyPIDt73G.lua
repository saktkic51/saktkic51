local plr = game:GetService("Players").LocalPlayer



local cclosure = syn_newcclosure or newcclosure or nil



if not cclosure or not hookmetamethod then

   plr:Kick("\n\nYour exploit doesn't support hookmetamethod\n(x.synapse.to | script-ware.com)\n")

end



local oldNamecall

oldNamecall = hookmetamethod(game, "__namecall", cclosure(function(self,...)

   local NamecallMethod = getnamecallmethod()

   local args = {...}

   

   if (NamecallMethod == "Kick" or NamecallMethod == "kick") and not checkcaller() then

       if self ~= plr then

           return oldNamecall(self,...)

       end

       return

   end

   

   return oldNamecall(self,...)

end))

print("Adonis Bypass Antikick Has Loaded:D")