ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "LDAG"
ATTACHMENT.Model = Model("models/more/grip/ldag.mdl")
ATTACHMENT.Icon = Material("more_s_icons/ldag.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.93
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.93
	    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    end
end

--ATTACHMENT.BonemergeToCategory = {"Barrels"}

--ATTACHMENT.VElement = {Bone = "tag_barrel_attach",Position = Vector(0,0,0),Angles = Angle(0, 0, 0),Offsets = {}}
 