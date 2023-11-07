ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "TD Foregrip"
ATTACHMENT.Model = Model("models/efttt/foregrip/td.mdl")
ATTACHMENT.Icon = Material("icons/icon_f_td.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.65
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.2
	    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    end
end
--ATTACHMENT.BonemergeToCategory = {"Barrels"}

--ATTACHMENT.VElement = {Bone = "tag_barrel_attach",Position = Vector(0,0,0),Angles = Angle(0, 0, 0),Offsets = {}}
 