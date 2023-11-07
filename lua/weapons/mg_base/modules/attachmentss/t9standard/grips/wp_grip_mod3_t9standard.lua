ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "Mod.3 Foregrip"
ATTACHMENT.Model = Model("models/efttt/foregrip/v_mod3.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/eft/icon_mod3.vmt")
ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.2
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.85
	    if (weapon.AlternateGrips) then 
        weapon:SetGripPoseParameter("grip_barshort_gripvert_offset") 
    end
end
--ATTACHMENT.BonemergeToCategory = {"Barrels"}

--ATTACHMENT.VElement = {Bone = "tag_barrel_attach",Position = Vector(5, 0,-1),Angles = Angle(90, 0, 0),Offsets = {}}